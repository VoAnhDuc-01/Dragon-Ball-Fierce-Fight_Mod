import zlib
import struct
import os

SWF_PATH = r"D:\my_project\project7\db.swf"
OUT_PATH = r"D:\my_project\project7\extracted_assets\scripts\actions_dump.txt"

def dump():
    with open(SWF_PATH, "rb") as f:
        magic = f.read(3).decode("latin1")
        f.read(5)
        data = zlib.decompress(f.read()) if magic == "CWS" else f.read()

    nbits = data[0] >> 3
    pos = ((5 + nbits * 4 + 7) // 8) + 4

    os.makedirs(os.path.dirname(OUT_PATH), exist_ok=True)
    with open(OUT_PATH, "w", encoding="utf-8") as sf:
        def dump_action_bytes(prefix, abytes):
            i = 0
            while i < len(abytes):
                op = abytes[i]
                i += 1
                if op == 0:
                    break
                length = 0
                if op >= 0x80:
                    if i + 2 > len(abytes): break
                    length = struct.unpack("<H", abytes[i:i+2])[0]
                    i += 2
                payload = abytes[i:i+length]
                if op == 0x96: # Push
                    vals = []
                    p_idx = 0
                    while p_idx < len(payload):
                        t = payload[p_idx]
                        p_idx += 1
                        if t == 0:
                            end = payload.find(b"\x00", p_idx)
                            if end == -1: end = len(payload)
                            s = payload[p_idx:end].decode("latin1", errors="ignore")
                            vals.append(f'"{s}"')
                            p_idx = end + 1
                        elif t == 1:
                            if p_idx + 4 <= len(payload):
                                f_val = struct.unpack("<f", payload[p_idx:p_idx+4])[0]
                                vals.append(str(f_val))
                                p_idx += 4
                        elif t == 2:
                            vals.append("null")
                        elif t == 3:
                            vals.append("undefined")
                        elif t == 4:
                            vals.append(f"r{payload[p_idx]}")
                            p_idx += 1
                        elif t == 5:
                            vals.append("true" if payload[p_idx] else "false")
                            p_idx += 1
                        elif t == 6:
                            if p_idx + 8 <= len(payload):
                                d_val = struct.unpack("<d", payload[p_idx:p_idx+8])[0]
                                vals.append(str(d_val))
                                p_idx += 8
                        elif t == 7:
                            if p_idx + 4 <= len(payload):
                                i_val = struct.unpack("<I", payload[p_idx:p_idx+4])[0]
                                vals.append(str(i_val))
                                p_idx += 4
                        elif t == 8:
                            vals.append(f"dict[{payload[p_idx]}]")
                            p_idx += 1
                        else:
                            break
                    sf.write(f"{prefix} PUSH: " + ", ".join(vals[:15]) + "\n")
                elif op == 0x88: # Constant pool
                    cnt = struct.unpack("<H", payload[0:2])[0]
                    p_idx = 2
                    constants = []
                    for _ in range(min(cnt, 25)):
                        end = payload.find(b"\x00", p_idx)
                        if end == -1: break
                        constants.append(payload[p_idx:end].decode("latin1", errors="ignore"))
                        p_idx = end + 1
                    sf.write(f"{prefix} CONSTANT_POOL ({cnt}): " + ", ".join(constants) + "\n")
                elif op in (0x06, 0x07):
                    sf.write(f"{prefix} {'PLAY' if op == 0x06 else 'STOP'}\n")
                elif op == 0x1C:
                    sf.write(f"{prefix} GET_VARIABLE\n")
                elif op == 0x1D:
                    sf.write(f"{prefix} SET_VARIABLE\n")
                elif op == 0x4E:
                    sf.write(f"{prefix} GET_MEMBER\n")
                elif op == 0x4F:
                    sf.write(f"{prefix} SET_MEMBER\n")
                elif op == 0x3D:
                    sf.write(f"{prefix} CALL_METHOD\n")
                i += length

        tag_idx = 0
        sprite_count = 0
        action_count = 0
        while pos < len(data):
            hdr = struct.unpack("<H", data[pos:pos+2])[0]
            pos += 2
            t_type = hdr >> 6
            t_len = hdr & 0x3F
            if t_len == 0x3F:
                t_len = struct.unpack("<I", data[pos:pos+4])[0]
                pos += 4
            t_data = data[pos:pos+t_len]
            if t_type == 12:
                sf.write(f"\n=== Main Timeline Tag {tag_idx} (Len: {t_len}) ===\n")
                dump_action_bytes("  [Main]", t_data)
                action_count += 1
            elif t_type == 39 and len(t_data) >= 4:
                sprite_id = struct.unpack("<H", t_data[0:2])[0]
                sub_pos = 4
                while sub_pos < len(t_data):
                    shdr = struct.unpack("<H", t_data[sub_pos:sub_pos+2])[0]
                    sub_pos += 2
                    stype = shdr >> 6
                    slen = shdr & 0x3F
                    if slen == 0x3F:
                        slen = struct.unpack("<I", t_data[sub_pos:sub_pos+4])[0]
                        sub_pos += 4
                    if stype == 12:
                        sf.write(f"\n=== Sprite {sprite_id} DoAction (Len: {slen}) ===\n")
                        dump_action_bytes(f"  [Sprite {sprite_id}]", t_data[sub_pos:sub_pos+slen])
                        action_count += 1
                    sub_pos += slen
                sprite_count += 1
            tag_idx += 1
            pos += t_len

    print(f"ActionScript dump complete! Examined {sprite_count} sprites, dumped {action_count} Action blocks.")

if __name__ == "__main__":
    dump()

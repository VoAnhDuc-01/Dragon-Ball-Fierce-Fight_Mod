import zlib, struct

with open(r'D:\my_project\project7\db.swf', 'rb') as f:
    f.read(8)
    body = zlib.decompress(f.read())

nbits = body[0] >> 3
pos = (5 + 4 * nbits + 7) // 8 + 4

sprites = {}
while pos < len(body):
    th = struct.unpack('<H', body[pos:pos+2])[0]
    pos += 2
    tt, tl = th >> 6, th & 0x3f
    if tl == 0x3f:
        tl = struct.unpack('<I', body[pos:pos+4])[0]
        pos += 4
    td = body[pos:pos+tl]
    pos += tl
    if tt == 39:
        sid, fc = struct.unpack('<HH', td[:4])
        if sid == 6178: sprites[sid] = td

td = sprites[6178]
sp_pos = 4
actions = []
while sp_pos < len(td):
    th = struct.unpack('<H', td[sp_pos:sp_pos+2])[0]
    sp_pos += 2
    tt, tl = th >> 6, th & 0x3f
    if tl == 0x3f:
        tl = struct.unpack('<I', td[sp_pos:sp_pos+4])[0]
        sp_pos += 4
    d = td[sp_pos:sp_pos+tl]
    sp_pos += tl
    if tt == 12: actions.append(d)
    if tt == 0: break

act4 = actions[4]
print('Bytes 6290 to 6360:', list(act4[6290:6360]))

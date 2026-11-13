import os
import zlib
import struct

SWF_PATH = os.path.join(os.path.dirname(__file__), "db.swf")
OUTPUT_DIR = os.path.join(os.path.dirname(__file__), "extracted_assets")

def make_png_rgba(width, height, rgba_data):
    raw = bytearray()
    for y in range(height):
        raw.append(0) # filter None
        row = rgba_data[y*width*4 : (y+1)*width*4]
        raw.extend(row)
    
    ihdr = struct.pack('>IIBBBBB', width, height, 8, 6, 0, 0, 0)
    idat = zlib.compress(bytes(raw))
    
    def chunk(tag, data):
        crc = zlib.crc32(tag + data) & 0xffffffff
        return struct.pack('>I', len(data)) + tag + data + struct.pack('>I', crc)
    
    return b'\x89PNG\r\n\x1a\n' + chunk(b'IHDR', ihdr) + chunk(b'IDAT', idat) + chunk(b'IEND', b'')

def extract_all():
    print(f"Reading {SWF_PATH}...")
    with open(SWF_PATH, "rb") as f:
        magic = f.read(3).decode("latin1")
        version = ord(f.read(1))
        uncompressed_len = struct.unpack("<I", f.read(4))[0]
        data = zlib.decompress(f.read()) if magic == "CWS" else f.read()

    print(f"SWF Version: {version}, Decompressed size: {len(data):,} bytes")
    
    nbits = data[0] >> 3
    rect_bits = 5 + nbits * 4
    rect_bytes = (rect_bits + 7) // 8
    pos = rect_bytes + 4
    
    sounds_dir = os.path.join(OUTPUT_DIR, "sounds")
    images_dir = os.path.join(OUTPUT_DIR, "images")
    for d in [sounds_dir, images_dir]:
        os.makedirs(d, exist_ok=True)

    extracted_sounds = 0
    extracted_images = 0
    
    while pos < len(data):
        hdr = struct.unpack("<H", data[pos:pos+2])[0]
        pos += 2
        t_type = hdr >> 6
        t_len = hdr & 0x3F
        if t_len == 0x3F:
            t_len = struct.unpack("<I", data[pos:pos+4])[0]
            pos += 4
        
        t_data = data[pos:pos+t_len]
        
        # DefineSound
        if t_type == 14 and len(t_data) >= 7:
            sid = struct.unpack("<H", t_data[0:2])[0]
            flags = t_data[2]
            fmt = (flags >> 4) & 0x0F
            if fmt == 2: # MP3
                mp3_data = t_data[7:]
                out_path = os.path.join(sounds_dir, f"sound_{sid:04d}.mp3")
                with open(out_path, "wb") as sf:
                    sf.write(mp3_data)
                extracted_sounds += 1

        # DefineBitsLossless2
        elif t_type == 36 and len(t_data) >= 7:
            cid = struct.unpack("<H", t_data[0:2])[0]
            fmt = t_data[2]
            w, h = struct.unpack("<HH", t_data[3:7])
            
            if fmt == 5: # 32-bit ARGB
                try:
                    raw_argb = zlib.decompress(t_data[7:])
                    if len(raw_argb) == w * h * 4:
                        rgba = bytearray(w * h * 4)
                        for i in range(w * h):
                            a = raw_argb[i*4]
                            r = raw_argb[i*4 + 1]
                            g = raw_argb[i*4 + 2]
                            b = raw_argb[i*4 + 3]
                            rgba[i*4] = r
                            rgba[i*4 + 1] = g
                            rgba[i*4 + 2] = b
                            rgba[i*4 + 3] = a
                        png_bytes = make_png_rgba(w, h, rgba)
                        out_path = os.path.join(images_dir, f"sprite_{cid:04d}_{w}x{h}.png")
                        with open(out_path, "wb") as img_f:
                            img_f.write(png_bytes)
                        extracted_images += 1
                except Exception:
                    pass
            elif fmt == 3 and len(t_data) >= 8: # 8-bit paletted
                try:
                    col_count = t_data[7] + 1
                    raw = zlib.decompress(t_data[8:])
                    col_bytes = col_count * 4
                    palette = raw[:col_bytes]
                    pixels = raw[col_bytes:]
                    padded_w = (w + 3) & ~3
                    if len(pixels) >= h * padded_w:
                        rgba = bytearray(w * h * 4)
                        out_idx = 0
                        for y in range(h):
                            row_start = y * padded_w
                            for x in range(w):
                                p_idx = pixels[row_start + x]
                                pal_offset = p_idx * 4
                                if pal_offset + 4 <= len(palette):
                                    a = palette[pal_offset]
                                    r = palette[pal_offset + 1]
                                    g = palette[pal_offset + 2]
                                    b = palette[pal_offset + 3]
                                    rgba[out_idx] = r
                                    rgba[out_idx + 1] = g
                                    rgba[out_idx + 2] = b
                                    rgba[out_idx + 3] = a
                                out_idx += 4
                        png_bytes = make_png_rgba(w, h, rgba)
                        out_path = os.path.join(images_dir, f"sprite_{cid:04d}_{w}x{h}.png")
                        with open(out_path, "wb") as img_f:
                            img_f.write(png_bytes)
                        extracted_images += 1
                except Exception:
                    pass

        pos += t_len

    summary_path = os.path.join(OUTPUT_DIR, "summary.txt")
    with open(summary_path, "w", encoding="utf-8") as sf:
        sf.write(f"Trích xuất hoàn tất từ: {SWF_PATH}\n")
        sf.write(f"- File âm thanh (MP3): {extracted_sounds}\n")
        sf.write(f"- Hình ảnh/Sprite (PNG): {extracted_images}\n")

    print(f"Extraction complete! Extracted {extracted_sounds} sounds, {extracted_images} PNG images.")

if __name__ == "__main__":
    extract_all()

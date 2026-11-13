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
        sprites[sid] = td

char_sids = [364, 556, 729, 896, 1103, 1235, 1377, 1485, 1656, 2096, 2206, 2433, 2765, 2920, 3126, 3398, 3519, 3735, 3817, 4090, 4238, 4324, 4409, 4548, 4681, 4930, 5071, 5173, 5392, 5492, 5658]

for csid in char_sids:
    if csid not in sprites: continue
    td = sprites[csid]
    sp_pos = 4
    f_num = 1
    labels = {}
    place_objs = {}
    while sp_pos < len(td):
        th = struct.unpack('<H', td[sp_pos:sp_pos+2])[0]
        sp_pos += 2
        tt, tl = th >> 6, th & 0x3f
        if tl == 0x3f:
            tl = struct.unpack('<I', td[sp_pos:sp_pos+4])[0]
            sp_pos += 4
        d = td[sp_pos:sp_pos+tl]
        sp_pos += tl
        if tt == 1: f_num += 1
        elif tt == 43:
            lbl = d[:-1].decode('latin1', errors='ignore')
            labels[f_num] = lbl
        elif tt in (26, 70):
            fl = d[0]
            cid = struct.unpack('<H', d[3:5])[0] if (fl & 2) else None
            if cid:
                if f_num not in place_objs: place_objs[f_num] = []
                place_objs[f_num].append(cid)
        if tt == 0: break
    
    chong_frame = None
    for fn, l in labels.items():
        if l == 'chong': chong_frame = fn
    cids = place_objs.get(chong_frame, [])
    print(f'Char {csid}: chong frame = {chong_frame}, cids = {cids}')

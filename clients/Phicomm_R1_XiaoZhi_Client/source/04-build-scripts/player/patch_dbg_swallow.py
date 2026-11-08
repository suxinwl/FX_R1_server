# -*- coding: utf-8 -*-
"""
临时诊断补丁：给 PlayerBinderWrapper$2 里所有 `catch Ljava/lang/Exception`
的静默吞咽点插入 printStackTrace + Logger.d，用于定位 pause/start 返回 false 的真凶。

用法：python patch_dbg_swallow.py <smali_dir>
只在 build 树生效，不进源码树。
"""
import io, re, sys, os

NEWLINE = '\n'


def patch(path):
    s = io.open(path, encoding='utf-8', errors='ignore').read()
    if 'R1DBG' in s:
        print('  already patched:', path)
        return 0
    lines = s.split('\n')

    labels = []
    for m in re.finditer(r'\.catch Ljava/lang/Exception; \{[^}]*\} :(catch_[0-9a-z_]+)', s):
        if m.group(1) not in labels:
            labels.append(m.group(1))

    out = []
    n = 0
    i = 0
    while i < len(lines):
        ln = lines[i]
        out.append(ln)
        m = re.match(r'^\s*:((?:catch_)[0-9a-z_]+)\s*$', ln)
        if m and m.group(1) in labels:
            # 下一非空行应为 move-exception vN
            j = i + 1
            while j < len(lines) and lines[j].strip() == '':
                out.append(lines[j])
                j += 1
            if j < len(lines):
                mm = re.match(r'^\s*move-exception (v\d+)\s*$', lines[j])
                if mm:
                    reg = mm.group(1)
                    out.append(lines[j])
                    out.append('')
                    out.append('    # R1DBG begin')
                    out.append('    invoke-virtual {%s}, Ljava/lang/Exception;->printStackTrace()V' % reg)
                    out.append('')
                    out.append('    invoke-static {%s}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V' % reg)
                    out.append('    # R1DBG end')
                    n += 1
                    i = j + 1
                    continue
            i = j
            continue
        i += 1

    io.open(path, 'w', encoding='utf-8', newline=NEWLINE).write('\n'.join(out))
    print('  patched %s : %d 处' % (os.path.basename(path), n))
    return n


def main():
    d = sys.argv[1]
    base = os.path.join(d, 'com', 'phicomm', 'speaker', 'player')
    total = 0
    for f in ('PlayerBinderWrapper$2.smali',):
        p = os.path.join(base, f.replace('/', os.sep))
        if os.path.exists(p):
            total += patch(p)
        else:
            print('  missing:', p)
    print('R1DBG total =', total)
    if total == 0:
        sys.exit(1)


if __name__ == '__main__':
    main()

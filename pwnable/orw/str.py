import sys
from struct import pack, unpack
s = sys.argv[1]
chunks = [s[i:i+4] for i in range(0,len(s),4)]
chunks.reverse()
for ch in chunks:
    print "    push %#0x" % unpack("<L", ch.ljust(4, "\x00"))

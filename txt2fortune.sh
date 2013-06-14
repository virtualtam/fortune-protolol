#!/bin/sh
# txt2fortune.sh
# Converts the Protolol .txt file into a fortune patch
#
# author	VirtualTam	<virtualtam[at]myopera[dot]com>
#
# Known caveats
# - multi-line protolols, manual intervention required!
if [ -f protolol ]; then
    mv protolol protolol.old
fi
sed -e 's/\s\?#protolol//g' -e 's/@\(\w*:\?\) \(.*\)/\2\n- \1\n%/' <protolol.txt >protolol


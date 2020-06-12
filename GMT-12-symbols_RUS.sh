#!/bin/bash
gmt set PS_CHAR_ENCODING ISO-8859-5 \
FONT Helvetica \
FONT_TITLE 12p,Helvetica \
#
ps=RUS.ps
# буквы. kwargs: координаты XY, размер
gmt psxy -R -J -Sl12p+t"Полина русский" -P << EOF > $ps
17 5
EOF
# Convert to image file using GhostScript
gmt psconvert RUS.ps -A0.2c -E720 -Tj -Z

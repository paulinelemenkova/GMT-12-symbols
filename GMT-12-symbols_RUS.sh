#!/bin/bash
# gmt set PS_CHAR_ENCODING ISO-8859-5

#########################################################################
# Cookbook APPENDIX F. CHART OF OCTAL CODES FOR CHARACTERS p. 206
gmt set FORMAT_TIME_PRIMARY_MAP abbreviated PS_CHAR_ENCODING ISO-8859-1
#Standard+ ISOLatin1, ISOLatin1+, and ISO-8859-x
gmt set --PS_CHAR_ENCODING ISOLatin1+
#gmt set --PS_CHAR_ENCODING Standard+

ps=RUS.ps
echo "2 1.0 \370 \371 \372 \373 \334 \375" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,Helvetica,black -K > $ps
echo "2 1.5 \360 \361 \362 \363 \364 \365" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,Helvetica,black -O -K >> $ps
echo "2 2.0 \120 \121 \122 \123 \124 \125 \126 \127" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,ZapfDingbats,black -O -K >> $ps
echo "2 2.5 \130 \131 \132 \133 \134 \135 \136 \137" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,ZapfDingbats,black -O -K >> $ps
echo "2 3.0 \140 \141 \142 \143 \144 \145 \146 \147" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,ZapfDingbats,black -O -K >> $ps
echo "2 3.5 \150 \151 \152 \153 \154 \155 \156 \157" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,ZapfDingbats,black -O -K >> $ps
echo "2 4.0 \340 \341 \342 \343 \344 \345" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,Helvetica,black -O >> $ps
# Convert to image file using GhostScript
gmt psconvert RUS.ps -A0.2c -E720 -Tj -Z

#########################################################################
gmt pstext -R0/7/0/5 -Jx1i -P -Ba -F+f30p,Times-Roman,DarkOrange+jBL << EOF > $ps
    1  1  It's P@al, not Pal!
    1  1.5  E\345
    1  2  E\360tv\362s \363m @%33%ZapfChancery@%%
    1  2.5 \347 привет
    1  3  @~D@~g@-b@- = 2@~pr@~G@~D@~h.
    1  3.5 stra@se Ångstrøm \35x2 M@!a\225noa
    1  4  naturgemä@s Verständnis f@ur Se@nor Gar@con
    1  4.5 \376 \335 \347
EOF
# Convert to image file using GhostScript
gmt psconvert RUS.ps -A0.2c -E720 -Tj -Z


#########################################################################
# common settings
gmt set FORMAT_GEO_MAP ddd:mm:ssF \
MAP_DEGREE_SYMBOL colon \
MAP_TITLE_OFFSET 20p \
MAP_GRID_CROSS_SIZE_PRIMARY 0.4c \
PS_LINE_JOIN round \
PS_CHAR_ENCODING ISO-8859-5 \
FONT LinBiolinumO \
FONT_TITLE 24p,LinLibertineOB \
MAP_ANNOT_OBLIQUE 42

ps=RUS.ps
echo "2 1.0 \320\333\344\320\322\330\342" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,Times-Roman,black -K > $ps
echo "2 1.5 Line 1 \320 \321 \322 \323 \324 \325 \326 \327 \328 \329 \330" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,Helvetica,black -O -K >> $ps
echo "2 2.0 Line 2 \330 \331 \332 \333 \334 \335 \336 \337 \338 \339 \340" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,Helvetica,black -O -K >> $ps
echo "2 2.5 Line 3 \340 \341 \342 \343 \344 \345 \346 \347 \348 \349 \350" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,Helvetica,black -O -K >> $ps
echo "2 3.0 Line 4 \351 \352 \353 \354 \355 \356 \357 \358 \359 \360" | gmt pstext -R0/7/0/5 -Jx1i -F+jTL+f20p,Helvetica,black -O >> $ps
# Convert to image file using GhostScript
gmt psconvert RUS.ps -A0.2c -E720 -Tj -Z

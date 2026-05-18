#1
#2
find -type f  ../etc/*.conf -c
#3
find bash -iname ../etc
#4
find  -type f -atime n ../etc 
#5
find -type f -size gt 50k lt 500k ../etc
#6
find -type f -atime 7 ../etc | find -type f -atime 30 ../etc
#7 gol
#8
find -type f -vc ../etc/*.conf
#9
find  -type f ../etc/*.conf -maxdepth 2

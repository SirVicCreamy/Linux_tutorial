#1
cd /
mkdir ../tmp/ex03
cd ../tmp/ex03
df >> forta
#2
df / -h
#3$(($1+$2/2))
#4
du -sh ../var/* | sort -h  | head -5 #MB ?
#5 Pentru a gasi recursiv toate fisierele putem si cu tree, si ne afiseaza cate avem
find  -type f ../var/log/* | sort -hf | head -10
#6lipsa
#7
ls -lhA /etc/services
#8 lipsa
#9 lipsa
#10 lipsa
#11lipsa


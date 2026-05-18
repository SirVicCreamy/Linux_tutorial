#1nu stiu
#2nu stiu
#3
cd ../src/raw
mkdir app_a.log app_b.log app_c.log 
#4cp src/raw/raport_01.csv backup/raw/
#5
 cp -r src/ backup/src_copy
#6
mv backup/raw/raport_01/csv backup/raw/raport_master.csv
#7
cd /
mv ../src/raw/*.log backup/raw/raport_master.csv
#8lipsa
#9
rm -rf src/proccesed/*.log
#10
 rm -rf backup
#11
tree


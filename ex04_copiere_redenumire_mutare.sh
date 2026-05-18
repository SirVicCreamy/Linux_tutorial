echo "4: copiere, redenumire, mutare"
echo "1"
mkdir -p /tmp/ex04/ > src backup archive
echo "2."
touch -r /tmp/ex04/src/raw/raport_{01..05}*.csv
echo "3:"
touch -r /tmp/ex04src/raw/app_a.log app_b.log app_c.log
echo "4"
cp  tmp/ex04/src/raw/raport_01.csv tmp/ex04/backup/raw/raport_01.csv
echo "5"
cp -p tmp/ex04/scr tmp/ex04/backup/src_copy/
echo "6."
mv backup/raw/raport_01.csv backup/raw/raport_master.csv
echo "7"
mv tmp/ex04/src/raw*.log tmp/ex04/src/processed/
echo "9"
rm tmp/ex04/src/processed*.log
echo "10"
rm tmp/ex04/backup/src_copy/


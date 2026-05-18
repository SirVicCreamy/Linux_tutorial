echo "E8 ex1_8.sh Wildcards si Brace Expansion"
echo
echo "1:"
touch ~/lab-linux/date/raport_{01..12}_2026.csv
echo
echo "2:"
mkdir -p ~/lab-linux/pipeline/{ingestion,transform,output}/{raw,processe,failed}
echo
echo "3:"
cp ~/lab-linux/demo/*.csv ~/lab-linux/date/ 
cp ~/lab-linux/demo/*.log ~/lab-linux/date/ 
echo
echo "4:"
ls -l ~/lab-linux/demo/???.*
echo
echo "5:"
for fisier in ~/lab-linux/date/raport_*_2026.csv; do 
	baza=$(basename "$fisier")
	mv "$fisier" ~/lab-linux/date/${baza/raport_/monthly_}
done
echo
echo "6:"
rm ~/lab-linux/date/monthly_*.csv

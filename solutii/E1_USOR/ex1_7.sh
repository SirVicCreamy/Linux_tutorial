echo "E7 ex1_7.sh tee si Redirect Avansat"
echo " "
echo "1:"
{ echo "Raport generat la:"$(date)
cat ~/lab-linux/demo/app.log
echo "Total linii:"$(wc -l ~/lab-linux/demo/app.log)
} > ~/lab-linux/demo/raport_complet.txt;
echo
echo "2:"
grep "ERROR" ~/lab-linux/demo/app.log | tee ~/lab-linux/demo/erori_detectate.txt  
echo
echo "3:"
echo " -- LONG MARE -- " >>  ~/lab-linux/demo/erori_detectate.txt 
grep "ERROR" ~/lab-linux/exercitii/sistem_mare.log >> ~/lab-linux/demo/erori_detectate.txt 
echo 
echo "4:"
find / -name "*.conf" 2>/dev/null | head -10 | tee ~/lab-linux/demo/erori_find.txt | tail -5 > ~/lab-linux/demo/rezultate.txt
echo
echo "5:"
wc -l ~/lab-linux/demo/raport_complet.txt
head -3 ~/lab-linux/demo/raport_complet.txt

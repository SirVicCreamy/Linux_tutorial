echo "E6 ex1_6.sh Pipe si Redirect. Baza"
echo " "
echo "1:"
#sort -u ~/lab-linux/demo/tranzactii.csv | cut -d',' -f3 , prima incercare, nu stiam cum sa le pun pe toate in aceeasi linie asa ca am intreabt pe gemeni. 
tail -n +2 ~/lab-linux/demo/tranzactii.csv | cut -d',' -f3 | sort | uniq
echo " "
echo " "
echo "2:"
touch ~/lab-linux/date/erori.txt #am facut prima data fisierul. cred ca se facea automat si fisierul dar nu mi a mers din prima si am zis ca poate pentru ca nu exista fisierul.
ls /director/inexistent 2> ~/lab-linux/date/erori.txt 
cat ~/lab-linux/date/erori.txt
echo " "
echo " "
echo "3:"
touch ~/lab-linux/demo/raport_demo.txt | ls -lhS
echo " "
echo " "
echo "4:"
ls /tmp demo/ > ~/lab-linux/demo/mixte.txt 2>&1 
cat ~/lab-linux/demo/mixte.txt
echo " "
echo " "
echo "5:"
tail -n +2 ~/lab-linux/demo/angajati.csv | cut -d ',' -f3 | sort | uniq -c | sort -rn
echo " "
echo " "
echo "6:"
head -n 5 ~/lab-linux/demo/produse.csv | tee  

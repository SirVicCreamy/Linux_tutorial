echo "E4 ex1_4.sh Inspectare si vizualizare continut fisier "
echo " "
echo "1:"
head -n 3 ~/lab-linux/demo/*.csv
echo " "
echo " "
echo "2:"
tail -n 10 ~/lab-linux/demo/app.log
echo " "
echo " "
echo "3:"
cat -n ~/lab-linux/demo/config_app.txt
echo " "
echo " "
echo "4:"
# wc -l -w -c ~/lab-linux/demo/ , am vrut sa ma verific si mai trebuia pusa *
wc -l -w -c ~/lab-linux/demo/*
echo " "
echo " "
echo "5:"
tail -n +2 ~/lab-linux/demo/tranzactii.csv 
echo " "
echo " "
echo "6:"
tail -f ~/lab-linux/demo/app.log &
#dupa ce dau sleep 2 mi se opreste in 2 secunde, nu mai apuc sa dau kill %1...
echo " "
echo " "
echo "7:"
head -n 1 ~/lab-linux/demo/*.csv 

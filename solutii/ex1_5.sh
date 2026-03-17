echo "E5 ex1_5.sh Filtrare cu grup grep. Baza"
echo " "
echo "1:"
grep "ERROR" ~/lab-linux/demo/app.log 
echo " "
echo " "
echo "2:"
# grep -n "ERROR" "WARN" ~/lab-linux/demo/app.log , asa m am gandit prima data
grep -nE "ERROR|WARN" ~/lab-linux/demo/app.log
# -n -> afiseaza numarul liniei
# E -> Activează "Extended Regular Expressions", permițându-i lui grep să înțeleagă simbolul |.
# | -> ii spune sa caute "ERROR" sau "WARN"
echo " "
echo " "
echo "3:"
grep -i "Alice" ~/lab-linux/demo/tranzactii.csv 
echo " "
echo " "
echo "4:"
grep -c "INFO" ~/lab-linux/demo/app.log
echo " "
echo " "
echo "5:"
grep -v "␂#" f | grep -v "␂$" ~/lab-linux/demo/config_app.txt
echo " "
echo " "
echo "6:"
grep "404" ~/lab-linux/demo/server_access.log
# nu stiu sigur daca e bine 100%
echo " "
echo " "
echo "7:"
# grep -c "/bin|/bash" ~/lab-linux/demo/useri.txt
# grep "/bin|/bash" ~/lab-linux/demo/useri.txt
# grep -v "/nologin|/false" ~/lab-linux/demo/useri.txt
# cu asta a mers
# grep -l "/bin|/bash" ~/lab-linux/demo/useri*.txt
grep "/bin/bash" ~/lab-linux/demo/useri.txt
# m am complicat degeaba, credeam ca nu e asa usor...

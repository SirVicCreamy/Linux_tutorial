echo "ex2_2.sh ␖ grep cu Expresii Regulate Avansate"
echo
echo "1:"
# grep -E ~/lab-linux/demo/server_access.log 4xx
grep -E " 40[0134] " ~/lab-linux/demo/server_access.log # ajutor Claude
echo
echo "2:"
grep -E "^([^,]*,){3}[56][0-9]{3}," ~/lab-linux/demo/angajati.csv
# ([^,]*,){3} sare peste primele 3 coloane, apoi potrivește salariul din col. 4.
# sau:         cut -d',' -f4 ~/lab-linux/demo/angajati.csv | grep -E "^[56][0-9]{3}$"
echo
echo "3:"
# grep -E "[91011]" ~/lab-linux/demo/app.log
grep -E "2026-[0-9]{2}-[0-9]{2}T(09|10|11):" ~/lab-linux/demo/app.log
#2026-        → anul fix
# [0-9]{2}-    → luna (2 cifre)
# [0-9]{2}     → ziua (2 cifre)
#             → spațiu literal
# (09|10|11)   → ora 09 SAU 10 SAU 11
# :            → caracterul : de după oră
# m am ajutat de Claude.
echo
echo "4:"
grep -E "/sbin/nologin|bin/false" ~/lab-linux/demo/useri.txt
echo 
echo "5:"
grep -E "^[^#].*=[0-9]+(\.[0-9]+)?$" ~/lab-linux/demo/config_app.txt
# întreg[0-9]+
# zecimal[0-9]+\.[0-9]+
# ambele[0-9]+(\.[0-9]+)?

# ^[^#]          → linia NU începe cu #  (exclude comentarii)
# .*             → orice caractere (numele variabilei)
# =              → semnul egal
# [0-9]+         → cel puțin o cifră (întreg)
# (\.[0-9]+)?    → opțional: punct urmat de cifre (zecimal)
# $              → sfârșitul liniei (nimic după număr)
echo
echo "6:"
# grep "ERROR" ~/lab-linux/sistem_mare.log > touch ~/lab-linux/erori_context.txt
grep -C 2 "ERROR" ~/lab-linux/exercitii/sistem_mare.log > ~/lab-linux/erori_context.txt
echo
echo "7:"
# grep -E "[19][0-9]{4}" ~/lab-linux/demo/tranzactii.csv
grep -E "\b[0-9]{3,4}\b" ~/lab-linux/demo/tranzactii.csv # ajutat cu Claude.

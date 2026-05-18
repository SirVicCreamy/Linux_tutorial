echo "E10 ex1_10.sh introducere awk. Campuri si filtrare."
echo
echo "1:"
awk -F ',' 'NR>1 {print $2 "|" $4}' ~/lab-linux/demo/tranzactii.csv 
echo
echo "2:"
#awk -F ',' 'NR >1 {if ($4 +0 > 200) {200; linie =$0 }}
#END { print "Toate tranzanctiile cu suma mai mare de 200: ", linie }' ~/lab-linux/demo/tranzactii.csv
#asa m am gandit prima data, dupa m am ajutat de Claude
awk -F ',' 'BEGIN{print "Toate tranzactiile cu suma mai mare de 200:"} NR>1 && $4+0 > 200 {print}' ~/lab-linux/demo/tranzactii.csv
echo
echo "3:"
awk -F ',' 'NR >1 {sum += $4} END { printf " Total : %.2f RON \n", sum}' ~/lab-linux/demo/tranzactii.csv

# `printf "Total: %.2f RON\n", sum`
#- **`printf`** → afișare formatată (mai precis decât `print`)
#- **`%.2f`** → număr cu **exact 2 zecimale** (ex: `830.00`)
#- **`\n`** → linie nouă la final
#- **`sum`** → variabila cu totalul calculat

echo
echo "4:"
# awk -F ',' 'NR >1 && $6 && "card$" {print}' ~/lab-linux/demo/tranzactii.csv , incercarea mea, dupa am corectat cu claude
awk -F ',' 'NR>1 && $6 == "card" {print}' ~/lab-linux/demo/tranzactii.csv
echo
echo "5:"
awk -F ',' 'NR >1 {print "Nume: " $2 " | Salariu: " $4 "RON" }' ~/lab-linux/demo/angajati.csv
echo
echo "6:"
# awk -F ',' 'NR >1 {print $2 $3 == "ERROR"}' ~/lab-linux/demo/app.log , prima incercare dupa m am ajutat cu CLaude:
awk -F ' ' 'NR>1 && $2 == "ERROR" {print $2 " | " $3}' ~/lab-linux/demo/app.log
echo
echo "7:"
awk 'END{print "Nr Total linii: ", NR}' ~/lab-linux/demo/tranzactii.csv

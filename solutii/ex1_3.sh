echo "E3 USOR ex1_3.sh Copiere, mutare si stergere fisiere"
echo "1:"
# cp -r ~/lab-linux/demo angajati.csv produse.csv tranzitii.csv ~/lab-linux/date
cp ~/lab-linux/demo/*.csv ~/lab-linux/date/ 
#*.csv -> ii spune sistemului sa copieze orice fisier.csv
echo "2:"
cp ~/lab-linux/demo/*.log ~/lab-linux/date/
echo "3:"
mv ~/lab-linux/date/app.log ~/lab-linux/date/app_backup.log
echo "4:"
touch ~/lab-linux/date/config_app.txt
mv ~/lab-linux/date/config_app.txt ~/lab-linux/config
echo "5:"
touch ~/lab-linux/date/temp_{01..05}.txt && rm ~/lab-linux/date/temp_*.txt
echo "6:"
cp -r ~/lab-linux/date/ ~/lab-linux/date_backup
echo "7:"
#ls -lh  ~/lab-linux/date
#ls -lh  ~/lab-linux/date_backup
#asa am gandit eu dar nu e bine, ca doar imi listea practic, nu imi numara  fisierele din date/date_backup
ls ~/lab-linux/date | wc -l
ls ~/lab-linux/date_backup | wc -l
#m am ajutat de Gemeni, am gasit formula in pdf dar nu ma gandeam ca trebuie sa pun si ls.

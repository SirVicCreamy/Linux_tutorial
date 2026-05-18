echo "E2 ex1_2.sh Creare structura de directoare si fisiere"
echo "1:"
mkdir -p ~/lab-linux/proiect/{src,tests,docs,config}
echo "2:"
#cd src/ && touch main.py utils.py models.py, greseala
touch ~/lab-linux/proiect/src/{main.py,utils.py,models.py}
echo "3:"
#cd tests/ && touch test_{01..05}.sh , greseala
touch ~/lab-linux/proiect/tests/test_{01..05}.sh
echo "4:"
#touch config/settings.env >> echo ENV=development DEBUG=true , asa am gandit prima data
echo -e "ENV=development\nDEBUG=true " > ~/lab-linux/proiect/config/settings.env 
echo "5:"
tree ~/lab-linux/proiect/
echo "6:"
find ~/lab-linux/proiect/ -type f | wc -l
#type -f ->  cauta doar fisierele, wc -l ->  numara rezultatele

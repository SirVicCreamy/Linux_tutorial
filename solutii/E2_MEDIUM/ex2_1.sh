echo "Permisiuni Unix - chmod, chown, umask"
echo
echo "1:"
# mkdir ~/lab-linux/secure
chmod 700 ~/lab-linux/secure
touch ~/lab-linux/secure/parole.txt
chmod 600 ~/lab-linux/secure/parole.txt
touch ~/lab-linux/secure/pubkey.txt
rm ~/lab-linux/secure/pubkey.txt
touch ~/lab-linux/pubkey.txt
chmod 644 ~/lab-linux/secure/pubkey.txt
echo "2:"
touch ~/lab-linux/scripturi/test_perm.sh
chmod 755 ~/lab-linux/scripturi/test_perm.sh
echo 
echo "3:"
# mkdir ~/lab-linux/test_umask_dir
# touch ~/lab-linux/test_umask_dir/fisier_umask.txt
# umask 022 ~/lab-linux/test_umask_dir/fisier_umask.txt
#asa m am gandit prima data, ca umask se foloseste ca si chmod
original_umask=$(umask)
umask 027
touch ~/lab-linux/test_umask.txt
mkdir ~/lab-linux/test_umask_dir/
umask $original_umask
echo
echo "4:"
mkdir ~/lab-linux/fisiere_permisiuni
touch ~/lab-linux/fisiere_permisiuni/fisier1.txt
chmod 400 ~/lab-linux/fisiere_permisiuni/fisier1.txt
# fisier cu parole/chei private - doar owner-ul poate citi

touch ~/lab-linux/fisiere_permisiuni/fisier2.txt
chmod 600 ~/lab-linux/fisiere_permisiuni/fisier2.txt
# fisier text normal, document - owner-ul il poate modifica

touch ~/lab-linux/fisiere_permisiuni/fisier3.txt
chmod 755 ~/lab-linux/fisiere_permisiuni/fisier3.txt
# script shell - owner-ul il poate modifica si executa

ls -l ~/lab-linux/fisiere_permisiuni/
echo 
echo "5:"
touch ~/lab-linux/demonstrare_ex5

chmod g+w ~/lab-linux/demonstrare_ex5 
chmod o-r ~/lab-linux/demonstrare_ex5 
chmod a+r ~/lab-linux/demonstrare_ex5 
ls -l ~/lab-linux/demonstrare_ex5 
echo
echo "6:"
stat ~/lab-linux/secure/parole.txt

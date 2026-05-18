#!/usr/bin/env bash
echo "1. permisiuni si umask"
echo "1."
umask curent = 0022
echo "2."
mkdir -p scripts data config
touch fisier1.sh
touch fisier2.sh
touch fisier3.sh
chmod 755 fisier1.sh 
chmod 755 fisier2.sh
chmod 755 fisier3.sh
echo "3."
touch fisier1.csv
touch fisier2.csv
chmod 604 fisier1.csv
chmod 604 fisier2.csv
echo "4."
touch fisier.env
chmod 600 fisier.env
echo "5."
chmod u=rwx,g=rx,o= fisier1.sh
echo "6."
chmod u=rwx,g=rwx,o=x fisier1.csv
echo "7."
mkdir fis1
touch fis1.txt
umask 0022
ls -l
umask 0027
mkdir fis2
touch fi2.txt
ls -l
umask 0077 
mkdir fis3
touch fis3.txt
ls -l
echo "8."
chmod o+g /tmp/ex01/data
echo "9."
chmod u=rwx,g=,o= /tmp/ex01/config
echo "10."
umask 0022
umask


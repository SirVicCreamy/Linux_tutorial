#1
mkdir /tmp/ex09
mkdir /tmp/ex09/projekt
cd ../tmp/ex09/projekt
mkdir src
cd src
touch main.c util.c util.h echo "1"
cd ../
mkdir docs
cd docs
touch readme.md manual.md echo "1"
cd ../
mkdir build
cd build
touch main.o app
cd ../
mkdir .scratch
touch tmp.bin echo "1"
../../
#2
tar -czvf projeckt.tar.gz projekt
#3
tar -tzvf projeckt.tar.gz
#4
 rm -rf projekt
#5
tar -xzvf projekt.tar.gz -C ../tmp/restore_tar/
#6 nimic

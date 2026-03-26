echo "E9 ex1_9.sh Arhivare cu tar"
echo
echo "1:"
tar czf demo_backup.tar.gz ~/lab-linux/demo/ #aici trebuia pusa si calea la ~/lab-linux/demo/demo_backup.tar.gz
echo
echo "2:"
tar tzf ~/lab-linux/demo/demo_backup.tar.gz > ~/lab-linux/demo/continut_arhiva.txt
echo
echo "3:"
mkdir ~/lab-linux/restore
tar xzf ~/lab-linux/demo/demo_backup.tar.gz -C ~/lab-linux/restore/
echo
echo "4:"
find ~/lab-linux/demo/ -type f | wc -l
find ~/lab-linux/restore/home/decebal/lab-linux/demo/ -type f | wc -l
echo
echo "5:"
tar czf ~/lab-linux/csv_only.tar.gz ~/lab-linux/demo/*.csv
echo
echo "6:"
TIMESTAMP=$(date +%Y%m%d_%H%M)
tar czf ~/lab-linux/backup_${TIMESTAMP}.tar.gz ~/lab-linux/
echo
echo "7:"
ls -lh ~/lab-linux/csv_only.tar.gz
ls -lh ~/lab-linux/backup_20260326_0831.tar.gz

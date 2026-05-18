echo "3:inspectie storage"
echo "1:"
mkdir /tmp/ex03/
touch ex03.txt
findmnt /
echo "afisarea" /dev/sdd ext4   rw,relatime,discard,errors=remount-ro,data=ordered
echo "4."
lsblk -f /var/ *2/ type -f | sort -r |
echo "5:"
lsblk -o /var/log/ TYPE,TARGET,SOURCE,FSTYPE
echo "7:"
find /etc/services

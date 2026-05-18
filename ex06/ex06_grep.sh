echo "6: grep"
echo "1"
grep -f /etc/passwd
grep -f /etc/group
grep -f /etc/services
echo "2"
grep "bash" /etc/passwd
echo "3"
grep -v "nologin" /etc/passwd
echo "4"
grep -n "root" /etc/passwd
echo "5"
grep -o "root:" etc/passwd
echo "7"
grep -r "127.0.0.1" /etc/ 

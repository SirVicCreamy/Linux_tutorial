#1
grep -f /etc/passwd 
grep -f /etc/group
grep -f /etc/services
#2
grep bash /etc/passwd -n
#3
grep -v nologin /etc/passwd
#4
grep -c root /etc/passwd
#5 
grep "^root:" 
#6
grep "$bash" || "$sh" /etc/passwd
#7
grep -rn 127.0.0.1 /etc/
#8
#9
grep -H nameserver /etc/

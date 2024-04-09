vi postcheck.sh
--------------------------------------------------

#!/bin/bash 
echo -e "\nDate & Time Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
date >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nMounted Filesystems:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
df -Th >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nBlock IDs Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
blkid >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nDisks Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
fdisk -l >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nBlock Storage Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
lsblk >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nVolume Groups Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
vgdisplay >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nLogical Volume Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
lvdisplay >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nMultipathing Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
multipath -ll >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nNetwork Interfaces:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
ifconfig -a >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nSystem Memory:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
free -m >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nUptime Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
uptime >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nGRUB Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
cat /etc/grub2.cfg >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nProcesses Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
ps -elf >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nResource Utilization & Processes Details:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
top -bn 1 2>&1 1 >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nRouting Table Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
route -n >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nRouting Table Information:" >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 
cat /etc/fstab >>/home/ansadmin/"postcheck_$(date +"%d-%m-%Y").txt" 2>&1

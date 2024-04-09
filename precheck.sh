vi precheck.sh 
# You can add or remove your precheck command which you want to use.
# chmod +7 precheck.sh (give execute permission)
#./precheck (run the script)
---------------------------------------------------------------------------------------------------------

#!/bin/bash 
echo -e "\nDate & Time Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
date >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nMounted Filesystems:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
df -Th >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nBlock IDs Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
blkid >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nDisks Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
fdisk -l >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nBlock Storage Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
lsblk >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nVolume Groups Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
vgdisplay >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nLogical Volume Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
lvdisplay >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nMultipathing Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
multipath -ll >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nNetwork Interfaces:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
ifconfig -a >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nSystem Memory:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
free -m >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nUptime Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
uptime >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nGRUB Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
cat /etc/grub2.cfg >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nProcesses Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
ps -elf >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nResource Utilization & Processes Details:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
top -bn 1 2>&1 1 >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1 

echo -e "\nRouting Table Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
route -n >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nRouting Table Information:" >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 
cat /etc/fstab >>/home/ansadmin/"precheck_$(date +"%d-%m-%Y").txt" 2>&1

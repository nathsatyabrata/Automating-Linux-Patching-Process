# Automating-Linux-Patching-Process-Using-Ansible-ShellScript

1. We will Install and configure Ansible in 3 server. One in Ansible server and other 2 are node servers.
   - Create 1 instance for ansible and 2 for Ansible Node
   - Create a user(adduser <username>) and set password(passwd <username>) in all 3 server, name and password should be same.
   - Open /etc/sudoers Add the user below root and wheel  (ex: ansadmin  ALL=(ALL)  NOPASSWD:ALL)
   - Open /etc/ssh/sshd_config then make PasswordAuthentication yes and uncoment PermitRootLogin prohibit-password
   - systemctl restart sshd and try to login that user accout (su ansadmin)

   - Loging to that used ( su -ansadmin)
   - Create ssh key (cmd: ssh-keygen)inside ansadmin user.
   - Copy the public key to other 3 node servers (cmd: ssh-copy-id ansadmin@172.31.26.115 (private ip)).
  
   - Install ansible
   - Add host server private ip to hosts file
     
4. Then we will automate the Precheck and Postcheck proccess using shell script.
   - Login inside that user
   - create precheck.sh and postcheck.sh file and paste the shell script.
     
6. Write a Ansible script to automate everything.
   - Write the yaml ansible script inside that user and run the script (ansible-playbook patching.yaml)
![a](https://github.com/nathsatyabrata/Automating-Linux-Patching-Process/assets/93023257/e7c14e0d-6235-4233-9fa6-a7f4b1b1ae6c)
![B](https://github.com/nathsatyabrata/Automating-Linux-Patching-Process/assets/93023257/22915736-c64f-4bee-8ea5-46101200774d)

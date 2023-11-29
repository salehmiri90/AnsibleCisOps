# Automate CIS Tips on Windows Server 2022 using Ansible
## Description:
This repository contains Ansible codes to automation your windows server 2022 OS with CIS tips.

### Video Demo on Youtube
Instruction video is already uploaded to my youtube channel https://youtube.com/salehmiri90 and the video name is `Hardening windows server using Ansible and CIS tips`.

### Project Requirements:
&#9745; A Server with Linux operating system to work as control node. (codes are tested on Red Hat 8.6).

&#9745; Install Ansible on your control node.

&#9745; Install Winrm and configure it on control node.

&#9745; Provide a user to Ansible control node with admin privileage on Windows Machine.

&#9745; Establish netowrk access between control node and your endpoints on TCP ports `5985` and `5986` .

&#9745; Run `Configure Remoting for Ansible.ps1` file with admin privileage on Windows Machine.

&#9745; Run this command on `Ansible` server to check winrm service `winrm get winrm/config/Winrs`.

&#9745; Run this command on `Windows` server to check winrm service `winrm e winrm/config/listener`.

## Start to Use the code
### Step 1: Transfer codes to you Ansible Server
⭐ To clone this repository from my GitHub using the command line, you can use the following command:
`git clone https://github.com/salehmiri90/Automate_Hardening.git`

⭐ Move the contents of this cloned directory `CIS_winserver2022_21H2` to `/etc/ansible` using `mv -r CIS_winserver2022_21H2 /etc/ansible` command.

⭐ Check the files are exist in the destination path `cd /etc/ansible` then `ll`.

### Step 2: Defining Hosts Variables
⭐ Set a hostname for your Windows server on your control node's hosts file located in `vi /etc/hosts`.

As example `192.168.1.1  winodws-template`.

⭐ Try to ping the dns name on your control node and be sure that it set properly using `ping winodws-template`.

⭐ Set the name of your windows machine `winodws-template` in Ansible hosts inventory located in 'vi /etc/ansible/' and put it under `[harden]`.

### Step 3: Defining Group Variables
⭐ 

### Step 4: Configuring Host Variables


### Step 5: Running Playbooks with Roles and Variables

## Conclusion:
Configuring Ansible to run playbooks with roles, group variables, and host variables is a fundamental aspect of managing infrastructure efficiently. By organizing tasks into roles and defining variables at different levels, you can achieve greater flexibility, reusability, and maintainability in your Ansible playbooks. With the steps outlined in this article, you can effectively leverage roles and variables to streamline your infrastructure automation with Ansible.

# How to use
Choose your operating system, then follow youtube video: https://youtu.be/qJaz_X_2XHA?si=JVyfYyscGKb314pf

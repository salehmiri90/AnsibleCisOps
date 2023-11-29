# Automate CIS Tips on Windows Server 2022 using Ansible
## Description
This repository contains Ansible codes to automation your windows server 2022 OS based on CIS tips.

### Video Demo on Youtube
Instruction video is already uploaded to my youtube channel https://youtube.com/salehmiri90 and the video name is `Hardening windows server using Ansible and CIS tips`.

### Project Requirements
⭐ A Server with Linux operating system to work as control node. (codes are tested on Red Hat 8.6).

⭐ Install Ansible on your control node.

⭐ Install Winrm and configure it on control node.

⭐ Provide a user to Ansible control node with admin privileage on Windows Machine.

⭐ Establish netowrk access between control node and your endpoints on TCP ports `5985` and `5986` .

⭐ Run `Configure Remoting for Ansible.ps1` file with admin privileage on Windows Machine.

⭐ Run this command on `Ansible` server to check winrm service `winrm get winrm/config/Winrs`.

⭐ Run this command on `Windows` server to check winrm service `winrm e winrm/config/listener`.

## Start to Use this code
### Step 1: Transfer codes to you Ansible Server
&#9745; To clone this repository from my GitHub using the command line, you can use the following command:
`git clone https://github.com/salehmiri90/Automate_Hardening.git`

&#9745; Move the contents of this cloned directory `CIS_winserver2022_21H2` to `/etc/ansible` using `mv -r CIS_winserver2022_21H2 /etc/ansible` command.

&#9745; Check the files are exist in the destination path `cd /etc/ansible` then `ll`.

### Step 2: Defining Hosts Variables
&#9745; Set a hostname for your Windows server on your control node's hosts file located in `vi /etc/hosts`.

For example `192.168.1.1  winodws-template`.

&#9745; Try to ping the dns name on your control node and be sure that it set properly using `ping winodws-template`.

&#9745; Set the name of your windows machine `winodws-template` in Ansible hosts inventory located in 'vi /etc/ansible/inventory/hosts' and put it under `[harden]` and remove other items.

### Step 3: Defining Group Variables
&#9745; Edit windows server authentication details in this directory `vi /etc/ansible/inventory/group_vars/all.yml`, In this file, you have to modify `ansible_user`, `ansible_password`, `ansible_ssh_port` parameters as I did.

### Step 4: Running Playbooks 
&#9745; There is only one playbook you have to run, it's defined based on each chapter if you want to execute it based on each chapters.

&#9745; Use this command to enter the playbook directory `cd /etc/ansible/playbooks/` then run this command to execute whole parts in a single command `ansible-playbook 2022harden.yml`

&#9745; If you decided to run the playbook based on each section, you have to write tags name in the end of command, for example to run section 9 the command will be `ansible-playbook 2022harden.yml --tags s9`

# Contribution:
I believe that by collaborating with talented individuals like yourself, we can enhance the functionality, efficiency, and overall quality of our projects.
Thus, I'll happy for any forks from this project, so please use this code and let me know for any innovated ways to do it better.

## Contact information
### Email: salehmiri90@gmail.com
### Linkedin.com/in/salehmiri



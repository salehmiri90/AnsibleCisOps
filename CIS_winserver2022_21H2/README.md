# Automate CIS Tips on Windows Server 2022 using Ansible
## Description
This repository contains Ansible code to automate your Windows Server 2022 OS based on CIS tips. 🚀

## 🎥 Video Demo on Youtube
The instructional video has already been uploaded to my YouTube channel at [salehmiri90](https://youtube.com/salehmiri90) and the video titled `Hardening windows server using Ansible and CIS tips`.

## Project Requirements
⭐ A server running the Linux operating system is required to function as the control node. (This codes had been tested on Red Hat 8.6).

⭐ Install Ansible on your control node.

⭐ Install `pywinrm` and configure it on control node.

⭐ Grant administrative privileges to a user on the Windows machine from the Ansible control node.

⭐ Set up network access between the control node and your endpoints on TCP ports `5985` and `5986`.

⭐ Execute the `Configure Remoting for Ansible.ps1` file with administrative privileges on the Windows machine.

⭐ Execute this command on the `Ansible` server to check the WinRM service: 
````
winrm get winrm/config/Winrs
````

⭐ Execute this command on the `Windows` server to check the winrm service: 
````
winrm e winrm/config/listener
````

## Start to Use this code
### Step 1: Transfer codes to you Ansible Server
&#9745; To clone this repository from my GitHub using the command line, you can use the following command:
````
git clone https://github.com/salehmiri90/Automate_Hardening.git
````

&#9745; Use the 'mv' command to move the contents of the cloned directory 'CIS_winserver2022_21H2' to '/etc/ansible' as follows: 
````
mv -r CIS_winserver2022_21H2 /etc/ansible
````

&#9745; Verify that the files exist in the destination path '/etc/ansible' by first changing to the directory using the 'cd' command: 
````
cd /etc/ansible
````
And then listing the contents with the command: 
````
ll
````

### Step 2: Defining Hosts Variables
&#9745; Set a hostname for your Windows server on your control node's hosts file located in `vi /etc/hosts`. For example:
````
192.168.1.1  windows-template
````

&#9745; Verify that the DNS name 'windows-template' is properly set on your control node by attempting to ping it using the command:
````sh
ping windows-template
````

&#9745; In the Ansible hosts inventory located in `vi /etc/ansible/inventory/hosts`, place the name of your Windows machine, 'windows-template', under [harden] and remove other items.
````yml
[harden]
windows-template
````

### Step 3: Defining Group Variables
&#9745; Modify the Windows server authentication details in the directory `vi /etc/ansible/inventory/group_vars/all.yml`. In this file, update the `ansible_user`, `ansible_password`, and `ansible_ssh_port` parameters as I have done.
````yml
ansible_user: "ansible"
ansible_password: "SalehMiri@12345"
#ansible_ssh_port: 5985
ansible_ssh_port: 5986
````

### Step 4: Running Playbooks 
&#9745; There is only one playbook that needs to be executed, which is defined based on each chapter. If you want to execute it based on each chapter, you can do so.

&#9745; Navigate to the playbook directory using the command:
````
cd /etc/ansible/playbooks/
````
Then execute all parts with a single command using 
````
ansible-playbook 2022harden.yml
````

&#9745; If you decide to run the playbook based on each section, you need to specify the tag name at the end of the command. For example, to run section 9, the command would be:
````
ansible-playbook 2022harden.yml --tags s9
````

# ✍️ Contribution
I am confident that working together with skilled individuals like yourself can improve the functionality, efficiency, and overall quality of our projects. Therefore, I would be delighted to see any forks from this project. Please feel free to use this code and share any innovative ideas to enhance it further.

## ☎️ Contact information
### 📧 salehmiri90@gmail.com
### [Linkedin.com/in/salehmiri](https://www.linkedin.com/in/salehmiri)


# Introduction:
This repository contains Ansible codes to automation your windows server 2022 OS with CIS tips.

# Instruction on Youtube
Instruction video is already uploaded to my youtube channel with below URL:
`https://youtube.com/salehmiri90`
The video name is: 
`"Hardening windows server using Ansible and CIS tips"`

Setting up Ansible to run playbooks with roles, group variables, and host variables is essential for efficient and scalable infrastructure management. Ansible's flexibility allows for the organization of tasks into roles, the definition of variables at different levels, and the targeting of specific hosts or groups. In this article, we will guide you through the process of configuring Ansible to effectively utilize roles, group variables, and host variables in your playbooks.
# Step 1: Installing Ansible
Before getting started, ensure that Ansible is installed on your control node. You can install Ansible using package managers such as apt, yum, or pip, depending on your operating system. Once installed, verify the installation by running the ansible --version command.
# Step 2: Organizing Playbooks with Roles
Roles in Ansible provide a way to organize tasks, variables, and handlers into reusable units. To set up roles, create a directory structure for your playbook that includes a roles directory. Inside the roles directory, each role should have its own subdirectory containing the necessary components such as tasks, handlers, and variables. This modular approach allows for better organization and reusability of tasks across different playbooks.
# Step 3: Defining Group Variables
Group variables allow you to define variables that apply to specific groups of hosts. To set up group variables, create a directory named group_vars in your Ansible project directory. Within this directory, create YAML files named after your host groups (e.g., web_servers.yml, database_servers.yml) and define the variables specific to each group. These variables will be applied to all hosts within the respective group when running playbooks.
# Step 4: Configuring Host Variables
Host variables enable you to define variables that are specific to individual hosts. To configure host variables, create a directory named host_vars in your Ansible project directory. Within this directory, create YAML files named after your hosts (e.g., server1.yml, server2.yml) and define the variables specific to each host. These variables will be applied only to the designated hosts when running playbooks.
# Step 5: Running Playbooks with Roles and Variables
Once your roles, group variables, and host variables are set up, you can run your playbooks using the ansible-playbook command. When running the playbook, specify the inventory file that contains your host and group definitions, as well as any additional options such as limiting the playbook to specific hosts or groups.
# Conclusion:
Configuring Ansible to run playbooks with roles, group variables, and host variables is a fundamental aspect of managing infrastructure efficiently. By organizing tasks into roles and defining variables at different levels, you can achieve greater flexibility, reusability, and maintainability in your Ansible playbooks. With the steps outlined in this article, you can effectively leverage roles and variables to streamline your infrastructure automation with Ansible.

# How to use
Choose your operating system, then follow youtube video: https://youtu.be/qJaz_X_2XHA?si=JVyfYyscGKb314pf

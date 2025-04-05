# Package install script

## Ansible Installer Script
- This script installs the ansible AI automation tool onto a Linux machine/ distro in one line automatically installing required packages as well as updates as needed.
- What the script does:
    * Verifies the user is root. <br>
    * Verifies the apt package installer is installed otherwise prompts the user it is required. <br>
    * Prompts user for what is going to be installed and asks for confirmation. <br>
    * Checks if the name of the software already exists on the system and if so will notify user and abort. <br>
    * Silently installs ansible on the system. <br>
    * Prompts the user the install has completed and provides an example command for the user to verify themselves. <br>
- Please read below on information on how to install and run the script:

 ### Installation Guide
 - Run this command below to install the script:
```
wget https://raw.githubusercontent.com/tbyoung244/dotfiles/refs/heads/main/sys-installs/ansible_installer.sh
```
- To run the script make sure you have appropriate permissions, if not add them using the following command:
```
chmod +x anisble_installer.sh
```
- Once permissions are set make sure to run this command as root and run the command with the following command:
```
sudo ./ansible_installer.sh
```
- If the script does not detect any installs with same script name the code will prompt you to confirm installation, type 'Y' to continue with install or 'N' to cancel:
```
y\n
```
- If successfully installed, script will state:
```
Successfully installed.
```
- Run this command to verify installation:
```
ansible --version
```

### Citations
- https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html
   * I used this site to look up the commands on installing ansible.
- What's the command to verify if apt package manager is installed?
   * Asked ChatGPT what to type in my script to verify that the apt package manager is installed which it then gave me and I used in my script.

#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Permissions failed."
  exit 1
fi

if ! command -v apt &> /dev/null; then
  echo "Apt package manager required. Exiting."
  exit 1
fi

echo "Do you wish to install Ansible?"
read -p "Continue? [y/n]: " CONFIRM
if [[ "$CONFIRM" != "y" ]]; then
  echo "Cancelled by user."
  exit 0
fi

if command -v ansible &> /dev/null; then
  echo "Ansible already exists on this system. Aborting."
  exit 1
fi

echo "Updating packages"
apt update -y

echo "Installing software-properties-common."
apt install -y software-properties-common

echo "Adding Ansible PPA."
add-apt-repository --yes --update ppa:ansible/ansible

echo "Installing Ansible."
apt install -y ansible

echo "Successfully installed."
echo "Run 'ansible --version' to verify installation."

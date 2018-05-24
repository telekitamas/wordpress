#!/bin/bash
    
    #Ansible-höz szükséges csomagok, és az ansible telepítése
    sudo apt-get update
    sudo apt-get install software-properties-common
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get install ansible
    
    #Wordpress image klónozása githubról
    git clone https://github.com/andreipak/wordpress-ansible.git
    
    #Wordpress telepítése ansible segítségével
    cd wordpress-ansible
    sudo ansible-playbook playbook.yml -i hosts -e mysql_root_password=#password#

#!/bin/bash

for SERVERIP in $(cat /etc/ansible/hosts | grep '^[0-9]')
do    
    ssh -i key.pem ubuntu@$SERVERIP "echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICy82xuNwV7C8mzu1c3zDKOwRpRUY+qVuw7XT6e6OMYx ubuntu@ansible'  >> /home/ubuntu/.ssh/authorized_keys" 
done   

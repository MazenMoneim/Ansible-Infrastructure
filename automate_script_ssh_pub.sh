#!/bin/bash

for SERVERIP in $(cat /etc/ansible/hosts | grep '^[0-9]')
do    
    ssh -i key.pem ubuntu@$SERVERIP "echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBksDNRPoIKqH95Zt0z4oq0yCAFG/WtWYTt5z6h3ImKS ubuntu@ansible'  >> /home/ubuntu/.ssh/authorized_keys" 
done   

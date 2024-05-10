#!/bin/bash

for SERVERIP in $(cat /etc/ansible/hosts | grep '^[0-9]')
do    
    ssh -i key.pem ubuntu@$SERVERIP "echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOUPw+TmbNQlPRWo6CZR0cEzXb0oCL8d5RjrEYX0Cvad ubuntu@ansible'  >> /home/ubuntu/.ssh/authorized_keys" 
done   

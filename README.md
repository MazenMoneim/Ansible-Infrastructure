# Deploy Infrastructure using Ansible.
## Project Overview.

First things first, we kickstarted our infrastructure setup by using shell scripts to install Ansible on an `EC2` instance. Additionally, we fine-tuned our automation process by configuring `automate_ssh_pub.sh`. This script ensured that our public key was copied to all other instances, and it seamlessly appended the public key to the `authorized_keys` files. This step was crucial to automate and for secure and efficient communication between our Ansible control node and the managed servers.

## Leveraging the power of Ansible.
### we orchestrated the deployment of our entire stack:
#### 1- Web Servers:
* We set up two web servers, with the same website configuration. Ansible allowed us to define these configurations declaratively.
* Our web servers were ready to handle incoming `HTTP` requests, thanks to Ansible’s streamlined management.
#### 2- MySQL Databases:
* For our data storage needs, we deployed two `MySQL` databases. These databases were essential for our applications to store and retrieve data efficiently.
* Ansible took care of configuring `MySQL`, setting up users, and securing the databases.
#### 3- NTP (Network Time Protocol) Setup:
* Time synchronization across our infrastructure was critical. To achieve this, we set up an `NTP` server on our Ansible control node.
* Additionally, we configured `NTP` clients on all our web servers and databases. This ensured that they synced their clocks with our central `NTP` server.
* Accurate timekeeping is essential for various tasks, including logging, security certificates, and coordinated system operations.
#### 4- Ansible Roles for Organization:
* To keep our playbook organized and modular, we configured Ansible roles.
* Each role encapsulated a specific functionality (e.g., web server setup, database configuration, `NTP` management).
* Roles allowed us to reuse code, maintain consistency, and simplify playbook maintenance.
#### 5- The Playbook:
* Our work culminated in a single playbook.yml file. This playbook orchestrated the entire deployment process.
* It included references to our roles, defined hosts, vars and specified the order of execution.
* Running this playbook became our go-to command for provisioning and managing our infrastructure.

#

![server](https://github.com/MazenMoneim/Ansible-infrastructure/assets/135109542/135c6e7b-5527-4d67-922c-3d8c283ff34e)

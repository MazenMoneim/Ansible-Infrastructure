# Deploy Infrastructure using Ansible 📌
## Project Overview.

First things first, we kickstarted our infrastructure setup by using shell scripts to install Ansible on an EC2 instance. Additionally, we fine-tuned our automation process by configuring automate_ssh_pub.sh. This script ensured that our public key was copied to all other instances, and it seamlessly appended the public key to the `authorized_keys` files. This step was crucial to automate and for secure and efficient communication between our Ansible control node and the managed servers.

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
#
### How we get the job done!
#### - Using Modules
* `apt`: It allows you to install, update, or remove packages using the system’s package manager.
* `replace`: You can use it to search for a specific pattern (e.g., a string or regular expression) and replace it with another value, and with `replace: ''` we deleted this pattern.
* `lineinfile`: The lineinfile module allows you to manage lines within a file.
* `service`: The service module controls system services (starting, stopping, enabling, or disabling services).
* `shell`: The shell module runs shell commands directly on the target system.
* `get_url`: The get_url module downloads files from a URL and saves them locally.
* `unarchive`: The unarchive module extracts compressed archives (e.g., .tar.gz, .zip) on the target system.
* `copy`: The copy module copies files or directories from the control machine to the target system.
* `file`: The file module manages files and directories, The `absent` state ensures that a file or directory does not exist.
* `mysql_user` and `mysql_db`: These modules manage MySQL users and databases.
* `notify`: The notify module triggers handlers (tasks defined elsewhere in the playbook) when notified.
#### - Ansible Roles for Organization:
* To keep our playbook organized and modular, we configured Ansible roles.
* Each role encapsulated a specific functionality (e.g., web server setup, database configuration, `NTP` management).
* Roles allowed us to reuse code, maintain consistency, and simplify playbook maintenance.
* This feature helps us to write our project in a single simple playbook.yml file, This playbook orchestrated the entire deployment process.
#
![server](https://github.com/MazenMoneim/Ansible-infrastructure/assets/135109542/135c6e7b-5527-4d67-922c-3d8c283ff34e)

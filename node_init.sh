#!/bin/bash

sudo useradd ansible
sudo mkdir /home/ansible/.ssh
sudo touch /home/ansible/.ssh/authorized_keys
sudo chown -R ansible:ansible /home/ansible/.ssh
sudo chmod 700 /home/ansible/.ssh 
sudo chmod 600 /home/ansible/.ssh/authorized_keys
sudo bash -c "echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD3EPYWktXoaFAjVyv1AJ0mSd1TkpD+wiVuEX0R2cg9ZQNewS5LZ3j0duEF7ct+5irlBL6NRZTosFlTcyeQwukMU2YgHDCZ+lqgjCqYzY2G0p8d2/3vwwtRaPnUvooxXwRrhD7nnTqGMsa3DkDuzixdNJhgDxPNLOakL/bNy1FSia3keltEachdTJU+Ttkv5aytkB5zNKujyU2bVDwjnA2X2IQ9R0t7mkEIU2rAwRuty1wUGnhf+epVq76UFp0/McIiC9haaH6QQTJQk1VflMYLEpCe9cnQ8uTRRHyWNR3KDjArqEXBqQ8r4YOw74YXBUMKK+QX+lHIz/cmDJwYqUeCDkZYCDnZxMBIw8lBRqjahOsblVfJ3OehcdpcFv/J4wrJn8XgwxVxgPmto+FjHuUYwLBeoOIXpQMDptNI9Bkg6DFOkC9atngaxFlM5ecQ+GCI7SERER0qvG2zV2nbLfn7gLttVBTkEI1cpJXpLxFTclg9ltB82l1k7kRkA/dsAiE= ansible@onion-prod' >> /home/ansible/.ssh/authorized_keys"
sudo bash -c "echo 'ansible ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers"

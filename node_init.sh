#!/bin/bash

sudo useradd ansible
sudo mkdir /home/ansible/.ssh
sudo touch /home/ansible/.ssh/authorized_keys
sudo chown -R ansible:ansible /home/ansible/.ssh
sudo chmod 700 /home/ansible/.ssh 
sudo chmod 600 /home/ansible/.ssh/authorized_keys
sudo bash -c "echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDRAAOcMTiIG3FtfFrh0zJEYkw4fh/w3AIrZ79GvVxchwbuc58IlTMtzI+kONCLABPZ+c135mF3GQ0/rnCVFIFuOQyvs8iYWlZXwJrUl9rDMI577x81D7nB41lK7SqcDgbxFQGXVNUrH9W4aftBh70JgXCGsjXjlMAt91hRHW2Mmpv5PlEIiVixEFhv9lPd4NBU4kFYHppaMC3SeRa5KqdiTkFtoAlclttIoditj5I82AwmFzxHBLOZj1tjQcfyOa/EVK6TOp9sok4PTvXk0/WSAoUwsVUYzssk52eJE32ZDbrBFobrDMKHMFSMJcG8ZxA0b+hfxQEDHjp3nogmn+gNdyvXpIaWzpkpuTjKHQ0YmlViuyn5w+n7qPPFMbOaMNA0sHL8KQMnNPh7Zqs5TwOoqemTf1NcyI5VYy4oaC9j+DWRVDsmVn66Jt0CIXN0JM0RywQ1eV/a5lGsP3MDct1hAvaWJQxMEmRbw1azSHUNkvVG2AtxAy3eNXG5LkxACE= ansible@localhost.localdomain' >> /home/ansible/.ssh/authorized_keys"
sudo bash -c "echo 'ansible ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers"
#! /bin/bash
apt-get update
apt-get upgrade -y
curl https://releases.rancher.com/install-docker/18.09.sh | sh
sudo usermod -aG docker ubuntu
sudo growpart /dev/sda 1
sudo resize2fs /dev/sda1
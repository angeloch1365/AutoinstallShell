#!/bin/bash

#Install AWSCLI Bundle
cd ~/
mkdir /var/jenkins/AWSCliBundle
cd /var/jenkins/AWSCliBundle
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

#Install Java 8
cd ~/
sudo yum install -y java-1.8.0-openjdk.x86_64 || true \n
sudo /usr/sbin/alternatives --set java /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/bin/java || true\n
sudo /usr/sbin/alternatives --set javac /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/bin/javac || true \n
sudo yum remove java-1.7 || true \n

#Install Packer
cd ~/
mkdir /var/jenkins/packer
cd /var/jenkins/packer
wget https://releases.hashicorp.com/packer/1.2.5/packer_1.2.5_linux_amd64.zip
unzip -o packer_1.2.5_linux_amd64.zip

#Install Terraform
cd ~/
mkdir /var/jenkins/terraform
cd /var/jenkins/terraform
wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
unzip -o terraform_0.11.7_linux_amd64.zip

#Install Git
sudo yum install git -y

#Install Ansible
sudo amazon-linux-extras install ansible2 -y

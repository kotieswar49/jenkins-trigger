#!/bin/bash

# Update package index
sudo yum update -y

# Install Git
sudo yum install -y git
echo "git --version"

# Install Docker
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
echo "docker --version"

# Install OpenJDK 17
wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm
sudo rpm -ivf jdk-17_linux-x64_bin.rpm
echo "java -version"

# Add Jenkins repository and install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo yum install fontconfig -y
sudo yum install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Print Jenkins initial admin password
echo "Jenkins initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword


#Maven download
wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz


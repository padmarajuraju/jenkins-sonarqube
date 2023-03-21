#!/bin/bash

# Update system
sudo apt-get update

# Install Java
sudo apt-get install -y default-jdk

# Download and install Jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins

sudo systemctl enable jenkins
# Check status of Jenkins service
sudo systemctl status jenkins

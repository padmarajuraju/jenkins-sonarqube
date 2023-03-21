#!/bin/bash

# Update system
sudo apt-get update

# Install Java
sudo apt-get install -y default-jdk
sudo cd /opt
# Download and extract SonarQube
sudo apt-get install unzip
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.0.43852.zip
sudo unzip sonarqube-8.9.0.43852.zip -d /opt
# Create new user
sudo adduser sonar

# Give root permissions to new user
sudo usermod -aG sudo sonar

# Set SonarQube home directory

sudo chown -R sonar:sonar /opt/sonarqube-8.9.0.43852
sudo chmod -R 775 /opt/sonarqube-8.9.0.43852

# Switch to new user
sudo su - sonar

# Start SonarQube service
sudo ./opt/sonarqube-8.9.0.43852/bin/linux-x86-64/sonar.sh start

# Check status of SonarQube service
sudo ./opt/sonarqube-8.9.0.43852/bin/linux-x86-64/sonar.sh status

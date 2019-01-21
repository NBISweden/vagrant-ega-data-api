#!/bin/bash
# Update package list
apt-get update && apt-get upgrade -q -y

# Docker installation
echo "Add Docker repo..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get -qq install -y docker-ce=18.03.1~ce-0~ubuntu

# Java and Maven installation
apt install -y openjdk-8-jdk-headless
apt install -y maven

# Clone and build Data API
git clone https://github.com/EGA-archive/ega-data-api.git
cd ega-data-api/
mvn clean install -DskipTests -DskipDockerPush

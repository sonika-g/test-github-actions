#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

echo "Set up ssh"
mkdir -p ~/.ssh
echo $1 > ~/.ssh/id_rsa
cat ~/.ssh/id_rsa
echo "File created"
chmod 400 ~/.ssh/id_rsa
echo "Permission Changed"

echo "Set up ssh config"
echo "Host $2
HostName server
StrictHostKeyChecking no
User ec2-user
IdentityFile ~/.ssh/id_rsa
ProxyCommand none" > ~/.ssh/config

echo "Create Inventory File"
echo "[$3] 
server" > ~/inventory
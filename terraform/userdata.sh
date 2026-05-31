#!/bin/bash

yum update -y

# Install Python
yum install python3 -y

# Install Node.js
curl -sL https://rpm.nodesource.com/setup_18.x | bash -
yum install nodejs -y

# Install Git
yum install git -y

cd /home/ec2-user

git clone YOUR_GITHUB_REPO_URL

cd task1-single-ec2/app/backend

pip3 install -r requirements.txt

nohup python3 app.py > backend.log 2>&1 &

cd ../frontend

npm install

nohup node server.js > frontend.log 2>&1 &
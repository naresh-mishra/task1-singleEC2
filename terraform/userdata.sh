#!/bin/bash

yum update -y

# Install Python + pip
yum install python3 python3-pip -y

# Install Node.js
curl -sL https://rpm.nodesource.com/setup_18.x | bash -
yum install nodejs -y

# Install Git
yum install git -y

cd /home/ec2-user

git clone https://github.com/naresh-mishra/task1-singleEC2

cd task1-singleEC2/app/backend

pip3 install -r requirements.txt

nohup python3 app.py > backend.log 2>&1 &

cd ../frontend

npm install

nohup node server.js > frontend.log 2>&1 &
#!/bin/bash
echo "Installing Apache on Ubuntu..."
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo "<h1>Hello from Apache on Ec2!</h1>" | sudo tee /var/www/html/index.html

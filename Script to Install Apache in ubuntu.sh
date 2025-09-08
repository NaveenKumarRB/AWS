#!/bin/bash
sudo apt update                    #To update the system.
sudo apt install apache2           #To install apache in system
sudo systemctl status apache2      #To check the status of apache
sudo systemctl enable apache2      #To enable the apache     
#Adjust the firewall (if UFW is active): If you are using UFW (Uncomplicated Firewall), you need to allow HTTP traffic. Apache registers profiles with UFW for this purpose#
#You will see profiles like Apache, Apache Full, and Apache Secure. Apache: Opens port 80 (HTTP). Apache Full: Opens ports 80 (HTTP) and 443 (HTTPS). Apache Secure: Opens port 443 (HTTPS) only#
sudo ufw app list                  #List all Firewall status of the system.
sudo ufw allow 'Apache'            #Allow the Apache Firewall incoming traffic
sudo nano /var/www/html/index.html  #to create the index file
cat > echo "hello, welcome to my learnings">/var/www/html/index.html #add data to index.html
sudo systemctl restart apache2       #To restart the services

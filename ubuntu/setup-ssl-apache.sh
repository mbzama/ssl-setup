echo "Enter your subdomain to configure SSL:"
read subdomain

echo "Configuring SSL with $subdomain"

echo "Installing Certbot tool .."
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-apache

sudo a2enmod ssl
sudo a2enmod proxy
sudo a2enmod proxy_balancer
sudo a2enmod proxy_http
sudo a2enmod proxy_wstunnel
sudo certbot --apache -d $subdomain

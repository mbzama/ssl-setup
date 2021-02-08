echo "Enter your subdomain to configure SSL:"
read subdomain

echo "Configuring SSL with $subdomain"

echo "Installing Certbot tool .."
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update -y
sudo apt-get install python-certbot-nginx -y

sudo certbot --nginx -d $subdomain

sudo ufw allow https


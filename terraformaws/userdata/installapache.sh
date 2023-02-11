#! /bin/bash
apt-get update
apt-get install -y apache2
systemctl start apache2
systemctl enable apache2
echo "Deployed machine via Terraform" | sudo tee /var/www/html/index.html
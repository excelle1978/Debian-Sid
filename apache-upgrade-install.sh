sudo apt update && sudo apt upgrade
sudo apt install curl -y
curl -sSL https://packages.sury.org/apache2/README.txt | sudo bash -x
sudo apt update
sudo apt install apache2 -y
sudo apache2 -v
systemctl status apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo apt install ufw -y
sudo ufw enable
sudo ufw app list
sudo ufw allow 'Apache'
sudo apt update
sudo apt upgrade
sudo apt upgrade apache2

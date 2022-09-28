sudo apt update && sudo apt upgrade
sudo apt install software-properties-common apt-transport-https wget ca-certificates gnupg2 -y
sudo wget -O- http://repo.mysql.com/RPM-GPG-KEY-mysql-2022 | gpg --dearmor | sudo tee /usr/share/keyrings/mysql.gpg
echo 'deb [signed-by=/usr/share/keyrings/mysql.gpg] http://repo.mysql.com/apt/debian bullseye mysql-8.0' | sudo tee /etc/apt/sources.list.d/mysql.list
echo 'deb [signed-by=/usr/share/keyrings/mysql.gpg] http://repo.mysql.com/apt/debian bullseye mysql-tools' | sudo tee -a /etc/apt/sources.list.d/mysql.list
echo 'deb-src [signed-by=/usr/share/keyrings/mysql.gpg] http://repo.mysql.com/apt/debian bullseye mysql-tools' | sudo tee -a /etc/apt/sources.list.d/mysql.list
sudo apt update
sudo apt install mysql-community-server -y
apt policy mysql-community-server

#!/bin/bash

# Atualizando repo
sudo apt update -y && apt upgrade -y

# Instalando MariaDB
sudo apt install mariadb-server mariadb-client -y

# Configurado MariaDB
mysql_secure_installation

# Create database
mysql -uroot -p'rootDBpass' -e "create database nextcloud character set utf8mb4 collate utf8mb4_bin;"
mysql -uroot -p'rootDBpass' -e "grant all privileges on nextcloud.* to nextcloud@localhost identified by 'nextdbpass';"

# Instalar PHP e servidor web Apache
sudo apt -y install php php-cli php-xml php-zip php-curl php-gd php-cgi php-mysql php-mbstring
sudo apt -y install apache2 libapache2-mod-php

# Download Nextcloud
sudo apt install wget curl unzip -y
wget https://download.nextcloud.com/server/releases/latest.zip
unzip latest.zip
rm -f latest.zip

# Descompacte o arquivo e vá para a pasta da web do Apache e defina a propriedade e as permissões corretas.
sudo mv nextcloud /var/www/html/
sudo chown -R www-data:www-data /var/www/html/nextcloud
sudo sudo chmod -R 755 /var/www/html/nextcloud

# Desative a configuração padrão do servidor Apache
sudo a2dissite 000-default.conf
sudo rm /var/www/html/index.html
sudo systemctl restart apache2

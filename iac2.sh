#!/bin/bash

echo "Atualizando o sistema..."

apt update -y
apt upgrade -y

echo "Instalando aplicativos..."

apt install apache2 -y
apt install unzip -y

echo "Baixando aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Movendo aplicação para o diretório do  apache..."

unzip main.zip
cd linux-site-dio-main

cp -r * /var/www/html

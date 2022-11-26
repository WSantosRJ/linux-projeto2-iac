#!/bin/bash

echo "Atualizando o Servidor"

apt-get update
apt-get upgrade -y

echo "Servidor Atualizado com Sucesso"

echo "Instalando Servidor Web e Unzip"

apt-get install apache2 -y
apt-get install unzip -y

echo "Programas instalados com Sucesso"

echo "Baixando e copiando os arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Arquivos copiados com sucesso"

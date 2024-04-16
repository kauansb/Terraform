#!bin/bash

echo "atualizando dependências..."
sudo apt-get update && sudo apt-get upgrade -y

echo "instalando apache..."
sudo apt-get install apache2 -y

echo "clonando repositório e enviando para pasta www"
sudo git clone "<url do repositório>"
cd "<repositório>"
sudo cp * -R /var/www/html
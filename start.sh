#!/usr/bin/env bash
#por Lauan B Guermandi

echo "Iniciando container..."
export DOCKER_HOST=127.0.0.1:80
sudo docker-compose down
sudo docker-compose build
sudo docker-compose up -d
echo https://glpi.localhost

#!/bin/bash
nombre_imagen=container100apachephp
version=v2
puerto_host=8181
puerto_container=80
Memoria=100M
CPU="1,3"
echo "Construcción de imagen  a partir del Dockerfile....."
docker build -t  $nombre_imagen:$version .

echo "Iniciar contenedor en el puerto $puerto_host ....."
docker run -t -d -p $puerto_host:$puerto_container --memory=$Memoria --cpuset-cpus=$CPU  --name $nombre_imagen $nombre_imagen:$version
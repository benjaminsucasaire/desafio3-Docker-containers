#!/bin/bash
nombre_imagen=container50apachephp
version=v2
puerto_host=5555
puerto_container=80
Memoria=50M
CPU="0"
echo "Construcción de imagen  a partir del Dockerfile....."
docker build -t  $nombre_imagen:$version .

echo "Iniciar contenedor en el puerto $puerto_host ....."
docker run -t -d -p $puerto_host:$puerto_container --memory=$Memoria --cpuset-cpus=$CPU  --name $nombre_imagen $nombre_imagen:$version
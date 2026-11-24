#!/bin/sh

echo "Construyendo el proyecto..."

mkdir -p dist

tar -czf dist/mi-app.tar.gz app.sh config.env

echo "Proyecto construido correctamente."
echo "Artefacto generado:"

ls -la dist/

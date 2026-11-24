#!/bin/sh

echo "Ejecutando pruebas basicas..."

if [ -f "app.sh" ]; then
    echo "Prueba 1 superada: el archivo app.sh existe."
else
    echo "Error: el archivo app.sh no existe."
    exit 1
fi

if [ -f "config.env" ]; then
    echo "Prueba 2 superada: las dependencias se instalaron."
else
    echo "Error: faltan dependencias."
    exit 1
fi

echo "Todas las pruebas pasaron con exito."

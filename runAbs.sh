#!/bin/bash

# Obtener la ruta del directorio actual
DIR="$(pwd)"

echo "Compilando helloprintlibrary.o desde helloprintlibrary.c"
gcc -c helloprintlibrary.c -o helloprintlibrary.o

echo "Creando la librería compartida libhelloprintlibrary.so"
gcc -shared helloprintlibrary.o -o libhelloprintlibrary.so

echo "Compilando el ejecutable helloSOexe desde hellomainlibrary.c"
gcc -L"$DIR" -Wall -o helloSOexe hellomainlibrary.c -lhelloprintlibrary

echo "Configurando LD_LIBRARY_PATH para incluir la librería compartida"
export LD_LIBRARY_PATH="$DIR":$LD_LIBRARY_PATH

echo "Ejecución con carga de la shared object"
./helloSOexe

echo "Limpieza de archivos generados"
rm -rf hellomainlibrary.o helloprintlibrary.o libhelloprintlibrary.so helloSOexe

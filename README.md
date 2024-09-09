# Hello, Modular World!

Este mini proyecto te permite explorar cómo funcionan los archivos `Makefile` y los scripts de Bash (`.sh`) para manejar la compilación de programas C modulares. A través de este ejercicio, aprenderás cómo organizar tu código en diferentes archivos, compilar una librería compartida, y ejecutar tu programa de manera eficiente utilizando estas herramientas.

## Estructura del Proyecto

- `helloprintlibrary.c`: Archivo fuente que contiene una función para imprimir un mensaje en la consola.
- `helloprintlibrary.o`: Archivo objeto generado a partir de `helloprintlibrary.c`.
- `libhelloprintlibrary.so`: Librería compartida generada a partir del archivo objeto `helloprintlibrary.o`.
- `hellomainlibrary.c`: Archivo fuente principal que utiliza la librería compartida para imprimir un mensaje.
- `Makefile`: Archivo que define las reglas de compilación, enlazado y ejecución del programa.
- `run.sh`: Script Bash que automatiza el proceso de compilación, ejecución y limpieza (En este tienes que ingresar de forma manual la ruta en la que se encuentra tu proyecto).
- `runAbs.sh`: Script Bash que automatiza el proceso de compilación, ejecución y limpieza (Se crea una ruta absoluta de forma automática).

## Instrucciones de Uso

### Requisitos

- Un entorno Unix/Linux con el compilador `gcc` instalado.

#### Clonar el repositorio y entrar al proyecto

1. Clona el repositorio:
   ```bash
   git clone https://github.com/Giozar/makefilesh.git
   cd makefilesh
    ```
    
### Compilación y Ejecución con Makefile

1. Ejecuta el Makefile:
   ```bash
   make
    ```

2. Para ejecutar el programa:
   ```bash
   make run
    ```

3. Para limpiar los archivos generados:
   ```bash
   make clean
    ```

### Compilación y Ejecución con el Script Bash

#### Sin permisos
1. Da permisos de ejecución al script:

    ```bash
    chmod +x run.sh
    ```
2. Ejecuta el script:

    ```bash
    ./runAbs.sh
    ```

#### Con permisos
1. Da permisos de ejecución al script:

    ```bash
    chmod +x run.sh
    ```
2. Ejecuta el script:

    ```bash
    ./runAbs.sh
    ```
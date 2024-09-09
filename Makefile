# Nombre del ejecutable
EXECUTABLE = helloSOexe

# Archivos fuente y objetos
SRC_LIB = helloprintlibrary.c
OBJ_LIB = helloprintlibrary.o
LIB_SHARED = libhelloprintlibrary.so

SRC_MAIN = hellomainlibrary.c

# Directorio actual
DIR = $(shell pwd)

# Regla para todo (ejecuta todas las tareas)
all: $(EXECUTABLE)

# Compilar el archivo objeto de la librería
$(OBJ_LIB): $(SRC_LIB)
	@echo "Compilando $@ desde $<"
	gcc -c $(SRC_LIB) -o $(OBJ_LIB)

# Crear la librería compartida
$(LIB_SHARED): $(OBJ_LIB)
	@echo "Creando la librería compartida $@"
	gcc -shared $(OBJ_LIB) -o $(LIB_SHARED)

# Compilar el ejecutable
$(EXECUTABLE): $(LIB_SHARED) $(SRC_MAIN)
	@echo "Compilando el ejecutable $@ desde $(SRC_MAIN)"
	gcc -L"$(DIR)" -Wall -o $(EXECUTABLE) $(SRC_MAIN) -lhelloprintlibrary

# Ejecutar el programa
run: $(EXECUTABLE)
	@echo "Configurando LD_LIBRARY_PATH para incluir la librería compartida"
	export LD_LIBRARY_PATH="$(DIR)":$$LD_LIBRARY_PATH && ./$(EXECUTABLE)

# Limpiar los archivos generados
clean:
	@echo "Limpieza de archivos generados"
	rm -rf $(OBJ_LIB) $(LIB_SHARED) $(EXECUTABLE)

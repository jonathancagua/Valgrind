#!/bin/bash

# Compilar el programa
make

# Verificar si la compilación fue exitosa
if [ $? -eq 0 ]; then
    echo "Compilación exitosa. Ejecutando Valgrind..."
    valgrind ./hello
else
    echo "Error de compilación. No se puede ejecutar Valgrind."
fi

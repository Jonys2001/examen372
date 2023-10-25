#! /bin/bash

# Solicita al usuario la cantidad de archivos a crear
read -p "Introduce la cantidad de archivos de texto a crear: " numfiles

# Guarda la cantidad de archivos en una variable
cantidad_archivos=$numfiles



# Crea la estructura de carpetas
mkdir -p webapp/{css,js,docs/{text,python},img}

# Crea los archivos de la aplicación
for file in index.html style.css app.js main.py
do
    touch "./webapp/${file}"
done


curl -o meme.jpg "https://pm1.aminoapps.com/7021/417429318f6b29b6bc737fb95ba1ddafc9ba2decr1-720-642v2_hq.jpg"



# Crea los archivos .txt según la cantidad ingresada por el usuario
for x in $(seq 1 $cantidad_archivos)
do
    echo "Contenido del Archivo ${x}" > "file${x}.txt"
done

# Muestra un mensaje indicando que la estructura y los archivos han sido creados
echo "Estructura de carpetas y archivos de la aplicación creados con éxito. 
Se han creado ${cantidad_archivos} archivos de texto."


# Mueve los archivos a sus respectivas carpetas
mv "./webapp/style.css" "./webapp/css/"
mv "./webapp/main.py" "./webapp/docs/python/"
mv "./webapp/app.js" "./webapp/js/"
mv ./webapp/file*.txt ./webapp/docs/text/
#!/bin/bash
#@Autor Herrera Gandarela Gabriel Alejandro
#@Fecha 23/09/2020
#@Descripcion del script

#Validacion de parámetros
archivoImg="${1}"
numImagenes="${2}"
archivoZip="${3}"

#
#Funcion ayuda: manda los mensajes
#Parametros:
#parametro 1: valor del status
#

function ayuda(){
  status="${1}"
  cat s-02-ayuda.sh
  exit "${status}"
}

#Validando el primer parametro : nombre del archivo con la lista de imagenes
if [ -z "${archivoImg}" ]; then
#-z valida la cadena vacia
  echo "ERROR: El nombre del archivo de imagenes es requerido"
  ayuda 100
else
  if ! [ -f "${archivoImg}" ]; then
  #-f valida si el archivo es correcto "f" de archivo
    echo "ERROR: El archivo ${archivoImg} no existe"
    ayuda 101
  fi
fi

#Validando parametro 2: numero de imagenes
#rango valido: [1,90]
if [[ "${numImagenes}" =~ [0-9]+ && "${numImagenes}" -gt 0 
  && "${numImagenes}" -le 90 ]]; then
  #=~ Valua la expresión
  #-gt >=
  #-le <=
  #-qe == 
  #TODO
  numImagenes=${numImagenes}
else
	echo "ERROR: Numero de imagenes incorrecto"
	ayuda 102
fi

#Validar parametro 3 <opcional>
if [ -n "${archivoZip}" ]; then
#-n valida si el archivo no es nulo
  archivoSalida="${archivoZip}"
  dirSalida=$(dirname "${archivoZip}")
  nombreZip=$(basename "${archivoZip}")
##TODO  validar que archivoSalida sea un directorio valido y existente
##de lo contrario terminar con codigo 103

  if [ -d "${archivoSalida}" ];then
  #-d directorio valido
  	if [ "${nombreZip}" = "imagenes"];then
  		nombreZip= "${nombreZip}-$(date '+%Y-%m-%d-%H-%M-%S').zip"
  	else
  		echo "Error: La carpeta es incorrecta"
  		ayuda 103
  	fi
  else
  	echo "ERROR: La ruta no existe"
  	ayuda 103
  fi
else
  #TMP apunta a TMP a la carpeta tmp
  #USER usuario del SO
  #Crear variable de entorno TMP
  dirSalida=/"${TMP}"/"${USER}"/imagenes
  mkdir -p "${dirSalida}" 
  nombreZip="imagenes-$(date '+%Y-%m-%d-%H-%M-%S').zip"
fi

#Parametros validos
#Limpieza, eliminar posibles descargas anteriores
rm -rf "${dirSalida}"/*

#Leer el archivo que contiene la lista de imagenes
count=1
while read -r linea
do
	#en cada iteracion descarga imagenes
	wget -q -P "${dirSalida}" "${linea}"
		#-q quit, lo haga de manera silenciosa
		#-P directorio donde guarda dicha imagen
	#valida si descargo bien, manda 0 cuando todo salio bien 
  status=$?
  ##TODO validar el status

	if [ "${status}" -eq 0 ];then
    #Validando el count 
		if [ "${count}" -lt "${numImagenes}" ]; then
			count=$((count+1))
		else
      break
		fi
	else 
		echo "ERROR: No se descargo la imagen"
		ayuda 104
	fi
done < "${archivoImg}" #reedireccionar a la eestructura do
# < lee el archivoImg

#Generando el archivo zip
#export crea variable de entorno a IMG_ZIP_FILE 
export IMG_ZIP_FILE="${dirSalida}"/"${nombreZip}"
#Crear el ZIP
zip "${IMG_ZIP_FILE}" "${dirSalida}"/*
sudo chmod 700 ${IMG_ZIP_FILE}
#TODO generar el archivo con la lista de imagenes descargadas

ls "${dirSalida}" | grep jpg > ./s-00-lista-archivos.txt


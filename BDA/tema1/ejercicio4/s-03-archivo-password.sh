#!/bin/bash
#@Autor:           Herrera Gandarela Gabriel Alejandro
#@Fecha creación:  11/10/2020
#@Descripción:     Eliminación y recuperación del archivo password 

if ! [ "${USER}" = "oracle" ]; then
  echo "ERROR: este script debe ser ejecutado por el usuario Oracle"
  exit 1;
fi;

archivoPwd="${ORACLE_HOME}"/dbs/orapwahgbda1
archivoPwdBackup="/home/oracle/backups/orapwahgbda1"

echo "Validando si el archivo de passwords fue respaldado"
if ! [ -f "${archivoPwdBackup}" ]; then
  echo "Respaldando archivo de passwords"
  mkdir -p /home/oracle/backups
  #-p Genera toda la escritura de un jalon
  cp ${archivoPwd} ${archivoPwdBackup}
fi;


echo "Simulando la perdida del archivo"
rm -f "${archivoPwd}"

orapwd FILE=${archivoPwd} FORMAT=12.2 \
    FORCE=Y \
    SYS=password \
    SYSBACKUP=password     

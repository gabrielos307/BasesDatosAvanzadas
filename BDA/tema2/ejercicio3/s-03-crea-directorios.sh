#@Autor: Herrera Gandarela Gabriel Alejandro
#@Fecha creacion: 22/10/2020
#@Descripcion: Creando directorios para la BD 
#!/bin/bash

echo "Eliminando carpetas en caso de que existan"

rm -r /u01/app/oracle/oradata/AHGBDA2/*
rm -r /u02/app/oracle/oradata/AHGBDA2/*
rm -r /u03/app/oracle/oradata/AHGBDA2/*

echo "Creando carpetas para la BD"

mkdir -p /u01/app/oracle/oradata/AHGBDA2
mkdir -p /u02/app/oracle/oradata/AHGBDA2
mkdir -p /u03/app/oracle/oradata/AHGBDA2

echo 'Cambiando dueño a u01 a los directorios de AHGBDA2'

chown oracle:oinstall /u01/app/oracle/oradata/AHGBDA2

echo 'Cambiando de dueño a la carpeta u02'
cd /
chown -R oracle:oinstall /u02


echo 'Cambiando de dueño a la carpeta u03'
cd /
chown -R oracle:oinstall /u03

echo 'Cambiando permisos'

chmod 755 /u01/app/oracle/oradata/AHGBDA2

chmod -R 754 /u02


chmod -R 754 /u03


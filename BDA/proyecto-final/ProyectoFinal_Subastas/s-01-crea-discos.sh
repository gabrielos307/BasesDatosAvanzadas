#@Autor: Flores García Karina
#@Autor: Herrera Gandarela Gabriel Alejandro
#@Fecha creacion: 03/02/2021
#@Descripcion: Creación de carpetas para simulación de discos
#!/bin/bash

echo "Creando directorios para la simulacion de discos"
mkdir -p /disk_2
mkdir -p /disk_3
mkdir -p /disk_4
mkdir -p /disk_5
mkdir -p /disk_6
mkdir -p /disk 7

echo "Creando directorios para la instruccion create database"
mkdir -p /u01/app/oracle/oradata/FLHEPROY
mkdir -p /disk_2/app/oracle/oradata/FLHEPROY
mkdir -p /disk_3/app/oracle/oradata/FLHEPROY
mkdir -p /disk_4/app/oracle/oradata/FLHEPROY
mkdir -p /disk_5/app/oracle/oradata/FLHEPROY
mkdir -p /disk_6/app/oracle/oradata/FLHEPROY
mkdir -p /disk_7/app/oracle/oradata/FLHEPROY

echo "Cambiando de dueño y grupo a disks"
chown root:oinstall /disk_2
chown root:oinstall /disk_3
chown root:oinstall /disk_4
chown root:oinstall /disk_5
chown root:oinstall /disk_6
chown root:oinstall /disk_7

echo "Cambiando de dueño y usuario a oracle"
chown -R oracle:oinstall /disk_2/app
chown -R oracle:oinstall /disk_3/app
chown -R oracle:oinstall /disk_4/app
chown -R oracle:oinstall /disk_5/app
chown -R oracle:oinstall /disk_6/app
chown -R oracle:oinstall /disk_7/app

echo "Cambiando permisos a los directorios"
chmod -R 754 /u01/app/oracle/oradata/FLHEPROY
chmod -R 754 /disk_2
chmod -R 754 /disk_3
chmod -R 754 /disk_4
chmod -R 754 /disk_5
chmod -R 754 /disk_6
chmod -R 754 /disk_7
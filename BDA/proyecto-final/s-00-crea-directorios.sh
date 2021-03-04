#@Autor: 
#@Fecha Creacion:
#@Descripcion:

echo 'Eliminando carpetas en caso que existan'

rm -r /disk_1/app/oracle/oradata/FLHEPROY/*
rm -r /disk_2/app/oracle/oradata/FLHEPROY/*
rm -r /disk_3/app/oracle/oradata/FLHEPROY/*

echo 'Creando carpetas'

mkdir -p /disk_1/app/oracle/oradata/FLHEPROY/*
mkdir -p /disk_2/app/oracle/oradata/FLHEPROY/*
mkdir -p /disk_3/app/oracle/oradata/FLHEPROY/*

echo 'Cambiando de duenio a disk_1 a los directorios de FLHEPROY'

chown -R oracle:oinstall /disk_1/app/oracle/oradata/FLHEPROY

echo 'Cambiando de duenio a disk_2'

chown -R oracle:oinstall /disk_2

echo 'Cambiando de duenio a disk_3'

chown -R oracle:oinstall /disk_3

echo 'Cambiando permisos'

chmod -R 754 /disk_1/app/oracle/oradata/${ORACLE_SID}/

chmod -R 754 /disk_2

chmod -R 754 /disk_3




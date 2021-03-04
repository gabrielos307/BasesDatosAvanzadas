#@Autor: Flores García Karina y Herrera Gandarela Gabriel Alejandro
#@Fecha creacion: 06/02/2021
#@Descripcion: Creando PFILE

#!/bin/bash

archivoPwd="${ORACLE_HOME}"/dbs/orapwflheproy
echo "Haciendo export de ORACLE_SID"
export ORACLE_SID=flheproy
echo "Creando archivo de passwords"
orapwd FILE=${archivoPwd} FORMAT=12.2 \
    FORCE=Y \
    SYS=password
    SYSTEM=password
    BACKUP_USER=password

echo "Creando archivo PFILE"
touch $ORACLE_HOME/dbs/initflheproy.ora
echo "db_name=flheproy" >> ${ORACLE_HOME}/dbs/initflheproy.ora
echo "db_domain=fi.unam" >> ${ORACLE_HOME}/dbs/initflheproy.ora
echo "control_files=(/disk_1/app/oracle/oradata/flheproy/control01.ctl,
    /disk_2/app/oracle/oradata/flheproy/control02.ctl,
    /disk_3/app/oracle/oradata/flheproy/control03.ctl)" >> $ORACLE_HOME/dbs/initflheproy.ora
echo "memory_target=768M" >> $ORACLE_HOME/dbs/initflheproy.ora
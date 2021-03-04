#@Autor: Flores García Karina
#@Autor: Herrera Gandarela Gabriel Alejandro
#@Fecha creacion: 06/02/2021
#@Descripcion: Creando PFILE y archivo de passwords

#!/bin/bash

archivoPwd="${ORACLE_HOME}"/dbs/orapwflheproy
echo "Haciendo export de ORACLE_SID"
export ORACLE_SID=flheproy
echo "Creando archivo de passwords"
orapwd FILE=${archivoPwd} FORMAT=12.2 \
    FORCE=Y \
    SYS=password
echo "Creando archivo PFILE"
touch $ORACLE_HOME/dbs/initflheproy.ora
echo "db_name=flheproy" >> $ORACLE_HOME/dbs/initflheproy.ora
echo "db_domain=fi.unam" >> $ORACLE_HOME/dbs/initflheproy.ora
echo "control_files=(/u01/app/oracle/oradata/FLHEPROY/control01.ctl,
    /disk_2/app/oracle/oradata/FLHEPROY/control02.ctl,
    /disk_3/app/oracle/oradata/FLHEPROY/control03.ctl)" >> $ORACLE_HOME/dbs/initflheproy.ora
echo "memory_target=768M" >> $ORACLE_HOME/dbs/initflheproy.ora
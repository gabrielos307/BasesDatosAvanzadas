#@Autor: Herrera Gandarela Gabriel Alejandro
#@Fecha creacion: 19/10/2020
#@Descripcion: Creando PFILE

#!/bin/bash

archivoPwd="${ORACLE_HOME}"/dbs/orapwahgbda2
echo "Haciendo export de ORACLE_SID"
export ORACLE_SID=ahgbda2
echo "Creando archivo de passwords"
orapwd FILE=${archivoPwd} FORMAT=12.2 \
    FORCE=Y \
    SYS=password 
echo "Creando archivo PFILE"
touch $ORACLE_HOME/dbs/initahgbda2.ora
echo "db_name=ahgbda2" >> ${ORACLE_HOME}/dbs/initahgbda2.ora
echo "control_files=(/u01/app/oracle/oradata/AHGBDA2/control01.ctl,
      /u02/app/oracle/oradata/AHGBDA2/control02.ctl,
      /u03/app/oracle/oradata/AHGBDA2/control03.ctl)" >> $ORACLE_HOME/dbs/initahgbda2.ora
echo "memory_target=768M" >> $ORACLE_HOME/dbs/initahgbda2.ora
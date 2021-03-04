--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion: 04/02/2021
--@Descripcion: Creacion de la FRA
whenever sqlerror exit rollback
set serveroutput on 
connect sys as sysdba

create pfile from spfile;
shutdwon 
startup mount
--
--!mv /u01/app/oracle/oradata/FLHEPROY/redo03a.log /disk_6/app/oracle/oradata/FLHEPROY/flash_recovery_area/FLHEPROY/redo03aa.log
--!mv /u01/app/oracle/oradata/FLHEPROY/redo03b.log /disk_6/app/oracle/oradata/FLHEPROY/flash_recovery_area/FLHEPROY/redo03bb.log
--!mv /u01/app/oracle/oradata/FLHEPROY/redo03c.log /disk_6/app/oracle/oradata/FLHEPROY/flash_recovery_area/FLHEPROY/redo03cc.log

alter database 
rename file 
    '/u01/app/oracle/oradata/FLHEPROY/redo03a.log',
    '/disk_2/app/oracle/oradata/FLHEPROY/redo03b.log', 
    '/disk_3/app/oracle/oradata/FLHEPROY/redo03c.log'
to
    '/disk_6/app/oracle/oradata/FLHEPROY/flash_recovery_area/FLHEPROY/redo03aa.log', 
    '/disk_6/app/oracle/oradata/FLHEPROY/flash_recovery_area/FLHEPROY/redo03bb.log', 
    '/disk_6/app/oracle/oradata/FLHEPROY/flash_recovery_area/FLHEPROY/redo03cc.log'

alter database open;
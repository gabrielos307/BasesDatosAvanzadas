--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion: 04/02/2021
--@Descripcion: Creacion de archive logs
whenever sqlerror exit rollback
set serveroutput on 
connect sys as sysdba


shutdown
--respaldar un spfile
create pfile from spfile;
startup mount
alter system set log_archive_max_processes = 4 scope=both;
alter system set log_archive_trace=12 scope=both;
alter system set log_archive_dest_1='LOCATION=/disk_2/app/oracle/oradata/archivelog MANDATORY' scope=both;
--alter system set log_archive_dest_2='LOCATION=/disk6/app/oracle/oradata/FRA/arch';
alter system set log_archive_format = 'arch_flheproy_%t_%s_%r.arc' scope=spfile;
alter system set log_archive_min_succeed_dest=1 scope=both;

shutdown
startup mount
alter database archivelog;
alter database open;

archive log list
--crear un spfile
--select * from v$database;
--select * from v$archived_log;
--select * from v$archive_dest;

whenever sqlerror continue


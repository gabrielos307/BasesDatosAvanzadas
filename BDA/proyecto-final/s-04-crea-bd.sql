--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion: 04/02/2021
--@Descripcion: Creacion de la base de datos flheproy

connect sys/hola1234* as sysdba
Prompt connectando como sys
set serveroutput on

startup nomount

whenever sqlerror exit rollback;

Prompt Iniciando la creación de la base de datos
create database flheproy
   user sys identified by system2
   user system identified by system2 
   logfile group 1(
      '/u01/app/oracle/oradata/FLHEPROY/redo01a.log',
      '/disk_2/app/oracle/oradata/FLHEPROY/redo01b.log',
      '/disk_3/app/oracle/oradata/FLHEPROY/redo01c.log') size 50m blocksize 512,
   group 2(
      '/u01/app/oracle/oradata/FLHEPROY/redo02a.log',
      '/disk_2/app/oracle/oradata/FLHEPROY/redo02b.log',
      '/disk_3/app/oracle/oradata/FLHEPROY/redo02c.log') size 50m blocksize 512,
   group 3(
      '/u01/app/oracle/oradata/FLHEPROY/redo03a.log',
      '/disk_2/app/oracle/oradata/FLHEPROY/redo03b.log',
      '/disk_3/app/oracle/oradata/FLHEPROY/redo03c.log') size 50m blocksize 512
   maxloghistory 1
   maxlogfiles 16
   maxlogmembers 3
   maxdatafiles 1024
   character set AL32UTF8
   national character set AL16UTF16
   extent management local  
   datafile '/u01/app/oracle/oradata/FLHEPROY/system01.dbf'
      size 700m reuse autoextend on next 10240k maxsize unlimited
   sysaux datafile '/u01/app/oracle/oradata/FLHEPROY/sysaux01.dbf'
      size 550m reuse autoextend on next 10240k maxsize unlimited
   default tablespace users
      datafile '/disk_2/app/oracle/oradata/FLHEPROY/usersE101.dbf'
      size 500m reuse autoextend on maxsize unlimited
   default temporary tablespace tempts1
      tempfile '/u01/app/oracle/oradata/FLHEPROY/temp01.dbf'
      size 20m reuse autoextend on next 640k maxsize unlimited
   undo tablespace undotbs1
      datafile '/u01/app/oracle/oradata/FLHEPROY/undotbs01.dbf'
      size 200m reuse autoextend on next 5120k maxsize unlimited;

Prompt Homologando contrasenias de usuarios
alter user sys identified by system2;
alter user system identified by system2;
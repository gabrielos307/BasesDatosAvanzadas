--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion: 07/02/2021
--@Descripcion: Creacion de tablespaces

connect sys/system2 as sysdba
Prompt connectando como sys
set serveroutput on

whenever sqlerror exit rollback;

Prompt Creando tablespace usersE2
create tablespace usersE2
	datafile '/disk_3/app/oracle/oradata/FLHEPROY/usersE201.dbf' 
	size 500m autoextend on maxsize unlimited
    extent management local autoallocate
   	segment space management auto;

Prompt Creando tablespace objectsTbs
create tablespace objectsTbs
	datafile '/disk_3/app/oracle/oradata/FLHEPROY/objectsTbs01.dbf'
   	size 500m autoextend on maxsize unlimited
   	extent management local autoallocate 
   	segment space management auto;

Prompt Creando tablespace usersTbs
create tablespace usersTbs
   	datafile '/disk_2/app/oracle/oradata/FLHEPROY/usersTbs01.dbf'
   	size 500m autoextend on maxsize unlimited 
   	extent management local autoallocate 
   	segment space management auto;

Prompt Creando tablespace indexesTbs
create tablespace indexesTbs
   	datafile '/disk_3/app/oracle/oradata/FLHEPROY/indexTbs01.dbf'
   	size 200m autoextend on next 10m maxsize 300m
   	extent management local autoallocate 
   	segment space management auto;

Prompt Creando tablespace photoObjTbs
create tablespace photoObjTbs
   	datafile '/disk_4/app/oracle/oradata/FLHEPROY/photoObjTbs01.dbf'
   	size 200m autoextend on maxsize unlimited
   	extent management local autoallocate 
   	segment space management auto;

Prompt Creando tablespace autoextend on maxsize unlimited
create tablespace photoUsrTbs
   	datafile '/disk_5/app/oracle/oradata/FLHEPROY/photoUsrTbs01.dbf'
   	size 200m autoextend on maxsize unlimited 
   	extent management local autoallocate
   	segment space management auto;   

--autoextend on = Habilita la capacidad de extensión del datafile
--extend management local autolocate = Administra las extensiones
--segment space management auto = Administra los segmentos  ASSM
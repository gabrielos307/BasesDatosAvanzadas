--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion: 04/02/2021
--@Descripcion: Creacion de usuarios

whenever sqlerror exit rollback
set serveroutput on 
connect sys as sysdba

create user admin_objects identified by aobjects quouta unlimited on userE1;
create user admin_users identified by ausers quouta unlimited on userE2;
create user backup_user identified by bakcs quouta unlimited on backup;
grant aq_dminstrator_role to backup;




--otorgar permisos a usuarios de otros módulos
grant select, references on admin_objects.SUBASTA_OBJETO to admin_users;
grant select, references on admin_objects.OBJETO to admin_users;

grant select, references on admin_users.USUARIO to admin_objects;




--select * from session_privs
--SELECT TABLESPACE_NAME, FILE_NAME
--FROM   SYS.DBA_DATA_FILES
--WHERE  TABLESPACE_NAME = 'USERS';


whenever sqlerror continue
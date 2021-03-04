--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion: 04/02/2021
--@Descripcion: Creacion de usuarios

whenever sqlerror exit rollback
set serveroutput on 
connect sys as sysdba

create user admin_objects identified by aobjects quota unlimited on users
quota unlimited on indexesTbs quota unlimited on objectsTbs ;

create user admin_users identified by ausers quota unlimited on usersE2
quota unlimited on indexesTbs quota unlimited on usersTbs;

grant create session, create sequence, create table, create procedure to admin_users;
grant create session, create sequence, create table, create procedure to admin_objects;

--otorgar permisos a usuarios de otros módulos
--grant select, references on admin_objects.SUBASTA_OBJETO to admin_users;
--grant select, references on admin_objects.OBJETO to admin_users;
--grant select, references on admin_users.USUARIO to admin_objects;




--select * from session_privs
--SELECT TABLESPACE_NAME, FILE_NAME
--FROM   SYS.DBA_DATA_FILES
--WHERE  TABLESPACE_NAME = 'USERS';


whenever sqlerror continue
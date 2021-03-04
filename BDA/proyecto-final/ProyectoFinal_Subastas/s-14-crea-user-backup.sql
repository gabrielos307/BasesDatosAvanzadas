--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion: 04/02/2021
--@Descripcion: Creacion del usuario backup

whenever sqlerror exit rollback
set serveroutput on 
connect sys as sysdba


CREATE USER backup_user IDENTIFIED BY system2;  
GRANT AQ_ADMINISTRATOR_ROLE TO backup_user;
GRANT SYSBACKUP TO backup_user;
GRANT CONNECT TO backup_user;
ALTER USER backup_user DEFAULT ROLE ALL;

whenever sqlerror continue
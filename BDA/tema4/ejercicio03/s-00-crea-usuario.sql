--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  14/11/2020
--@Descripción: 

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba
declare
v_count number;
v_username varchar2(30) := 'ALE0403';
begin
--Verificar si existe el usuario
select count(*) into v_count 
from all_users
where username = v_username;
--Si no existe
if v_count = 0 then
-- Creando usuario
dbms_output.put_line('Creando usuario');
execute immediate 'create user ' 
|| v_username 
|| ' identified by ale quota unlimited on users';
execute immediate 'grant create table, create session, create sequence,
create procedure to ' || v_username;
--Si existe el usuario
else
dbms_output.put_line('El usuario '|| v_username||' ya existe');
end if; 
end;
/

whenever sqlerror continue
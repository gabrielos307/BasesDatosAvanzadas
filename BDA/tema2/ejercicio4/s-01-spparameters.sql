--@Autor: 
--@Fecha creación: 27/10/2020
--@Descripción: Creacion de usuario y tabla v$pparameter
connect sys as sysdba
whenever sqlerror exit rollback
set serveroutput on



declare
v_count number;
v_username varchar2(30) := 'ALE0204';
begin
--Verificar si existe el usuario
select count(*) into v_count 
from all_users
where username = v_username;
--Si no existe
if v_count = 0 then
-- Creando usuario
execute immediate 'create user ' 
|| v_username 
|| ' identified by ale quota unlimited on users';
execute immediate 'grant create table, create session, create sequence,
create procedure to ' || v_username;
--Si existe el usuario
else
dbms_output.put_line('El usuario '|| v_username||' ya existe');
end if;

--Verificar si la table existe
select count(*) into v_count
from all_tables
where table_name='T01_SPPARAMETERS'
and owner = v_username;

--Si la tabla existe, eliminarla
if v_count > 0 then
execute immediate 'drop table '||v_username||'.T01_SPPARAMETERS';
end if;

execute immediate '
    create table '||v_username||'.T01_SPPARAMETERS(
        name varchar2(16),
        value varchar2(255)
    )';
execute immediate 'insert into '||v_username||'.T01_SPPARAMETERS(
    name, 
    value)
    select name, value from v$spparameter where value is not null
    ';
    commit;
end;
/

whenever sqlerror continue
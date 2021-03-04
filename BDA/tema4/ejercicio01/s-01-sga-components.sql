--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  14/11/2020
--@Descripción: 

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba
declare
v_count number;
v_username varchar2(30) := 'ALE0401';
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
where table_name='T01_SGA_COMPONENTS'
and owner = v_username;

if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||'t01_sga_components';
end if;


--Verificar si la table existe
select count(*) into v_count
from all_tables
where table_name='T02_SGA_DYNAMIC_COMPONENTS'
and owner = v_username;

if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||'t02_sga_dynamic_components';
end if;


--Verificar si la table existe
select count(*) into v_count
from all_tables
where table_name='T03_SGA_MAX_DYNAMIC_COMPONENT'
and owner = v_username;

if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||'t03_sga_max_dynamic_component';
end if;


--Verificar si la table existe
select count(*) into v_count
from all_tables
where table_name='T04_SGA_MIN_DYNAMIC_COMPONENT'
and owner = v_username;

if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||'t04_sga_min_dynamic_component';
end if;

--Verificar si la table existe
select count(*) into v_count
from all_tables
where table_name='T05_SGA_MEMORY_INFO'
and owner = v_username;

if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||'t05_sga_memory_info';
end if;

--Verificar si la table existe
select count(*) into v_count
from all_tables
where table_name='T06_SGA_RESIZEABLE_COMPONENTS'
and owner = v_username;

if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||'t06_sga_resizeable_components';
end if;


end;
/

------------------------------
--Tabla 1
create table ale0401.t01_sga_components(
        memory_target_param number,
        fixed_size number,
        variable_size number, 
        database_buffers number, 
        redo_buffers number,
        total_sga number
);
insert into ale0401.t01_sga_components(
    memory_target_param,
    fixed_size, 
    variable_size, 
    database_buffers, 
    redo_buffers, 
    total_sga) values (
        (select trunc(value/1048576,2) from v$parameter where name='memory_target'),
        (select trunc(value/1048576,2) from v$sga where name = 'Fixed Size'),
        (select trunc(value/1048576,2) from v$sga where name = 'Variable Size'),
        (select trunc(value/1048576,2) from v$sga where name = 'Database Buffers'),
        (select trunc(value/1048576,2) from v$sga where name = 'Redo Buffers'),
        (select SUM(trunc(value/1048576,2)) from v$sga)
    );
------------------------------
--Tabla 2
create table ale0401.t02_sga_dynamic_components(
component_name varchar2(64),
current_size_mb number(10,2),
operation_count number(10,0),
last_operation_type varchar2(13),
last_operation_time date
);
insert into ale0401.t02_sga_dynamic_components(
    component_name,
    current_size_mb,
    operation_count,
    last_operation_type,
    last_operation_time 
) select component,trunc(current_size/1048576,2), oper_count, last_oper_type, last_oper_time
    from 
    v$sga_dynamic_components;

------------------------------
--Tabla 3
create table ale0401.t03_sga_max_dynamic_component(
component_name varchar2(64),
current_size_mb number(10,2)
);
insert into ale0401.t03_sga_max_dynamic_component(
    component_name,
    current_size_mb)
    select component, trunc(current_size/1048576,2)
    from 
    v$sga_dynamic_components where current_size = (select max(current_size) from v$sga_dynamic_components);

------------------------------
--Tabla 4
create table ale0401.t04_sga_min_dynamic_component(
component_name varchar2(64),
current_size_mb number(10,2)
);
insert into ale0401.t04_sga_min_dynamic_component(
    component_name,
    current_size_mb)
    select component, trunc(current_size/1048576,2)
    from 
    v$sga_dynamic_components where current_size = (
        select min(current_size) from v$sga_dynamic_components where current_size > 0);

------------------------------
--Tabla 5
create table ale0401.t05_sga_memory_info(
name varchar2(64),
current_size_mb number(10,2)
);
insert into ale0401.t05_sga_memory_info(
    name,
    current_size_mb
    ) select name, trunc(bytes/1048576,2)  
    from v$sgainfo where name = 'Maximum SGA Size';
insert into ale0401.t05_sga_memory_info(
    name,
    current_size_mb
    ) select name, trunc(bytes/1048576,2)  
    from v$sgainfo where name = 'Free SGA Memory Available';
    
------------------------------
--Tabla 6
create table ale0401.t06_sga_resizeable_components(
name varchar2(64)
);
insert into ale0401.t06_sga_resizeable_components(name)
    select name from v$sgainfo
        where resizeable = 'Yes';

whenever sqlerror continue

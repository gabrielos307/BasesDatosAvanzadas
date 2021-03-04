--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  14/10/2020
--@Descripción:      

whenever sqlerror exit rollback;
set serveroutput on
declare
  v_count number;
  v_username varchar2(30) := 'ALE0201';
begin
  select count(*) into v_count
  from all_users
  where username = v_username;
  if v_count = 0 then
    --creando usuario
    execute immediate ' 
      create user '
      || v_username
      ||' identified by ale quota unlimited on users';
    --Privilegios minimos
    execute immediate 'grant create table, create session to ' ||v_username;
  else
    dbms_output.put_line('El usuario '||v_username||' ya existe');
  end if;

--Creando la tabla
execute immediate '
    create table '||v_username||'.database_info(
      instance_name varchar2(16),
      db_domain varchar2(20),
      db_charset varchar2(15),
      sys_timestamp varchar2(40),
      timezome_offset varchar2(10),
      db_block_size_bytes number(5,0),
      os_block_size_bytes number(5,0),
      redo_block_size_bytes number(5,0),
      total_components number(5,0),
      total_components_mb number(10,2),
      max_component_name varchar2(30),
      max_component_desc varchar2(64),
      max_component_mb number(10,0)
      )';
--insertar dstos a la tabla database_info
  execute immediate 'insert into '||v_username||'.database_info (
    instance_name,
    db_domain,
    db_charset,
    sys_timestamp,
    timezome_offset,
    db_block_size_bytes,
    os_block_size_bytes,
    redo_block_size_bytes,
    total_components,
    total_components_mb,
    max_component_name,
    max_component_desc,
    max_component_mb
    ) values ( 
    (select instance_name from v$instance),
    (select sys_context(''USERENV'',''DB_DOMAIN'') from dual),
    (select value from nls_database_parameters where parameter=''NLS_CHARACTERSET''),
    (select systimestamp from dual),
    (select tz_offset(''America/Mexico_City'') from dual),
    (select value from v$parameter where name=''db_block_size''),
    1024,
    (select distinct blocksize from v$log),
    (select count(*) from v$sysaux_occupants),
    (select sum(space_usage_kbytes)/1024 from v$sysaux_occupants),
    (select occupant_name from v$sysaux_occupants where 
    space_usage_kbytes=(select max(space_usage_kbytes) from v$sysaux_occupants)),
    (select occupant_desc from v$sysaux_occupants where 
    space_usage_kbytes=(select max(space_usage_kbytes) from v$sysaux_occupants)),
    (select space_usage_kbytes/1024 from v$sysaux_occupants where 
    space_usage_kbytes=(select max(space_usage_kbytes) from v$sysaux_occupants))
    )';

    commit;
 end;
 /

col MAX_COMPONENT_DESC format a10
Prompt mostrando datos parte 1
set linesize window
select instance_name,db_domain,db_charset,sys_timestamp,timezome_offset
from ale0201.database_info;
Prompt mostrando datos parte 2
select db_block_size_bytes,os_block_size_bytes,redo_block_size_bytes,
total_components,total_components_mb
from ale0201.database_info;
Prompt mostrando datos parte 3;
select max_component_name,max_component_desc,max_component_mb
from ale0201.database_info;
--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  14/11/2020
--@Descripción: 

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba
declare
v_count number;
v_username varchar2(30) := 'ALE0402';
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

--Verificar si la table existe
select count(*) into v_count
from all_tables
where table_name='T03_DB_BUFFER_CACHE'
and owner = v_username;

if v_count > 0 then
    dbms_output.put_line('Borrando tabla');
    execute immediate 'drop table '|| v_username ||'.'||'t03_db_buffer_cache';
end if;

--Verificar si la table existe
select count(*) into v_count
from all_tables
where table_name='T04_DB_BUFFER_SYSSTATS'
and owner = v_username;

if v_count > 0 then
    dbms_output.put_line('Borrando tabla');
    execute immediate 'drop table '|| v_username ||'.'||'t04_db_buffer_sysstats';
end if;


end;

/
--Tabla t03_db_buffer_cache
create table ale0402.t03_db_buffer_cache(
    block_size number,
    current_size number,
    buffers number,
    target_buffers number,
    prev_size number,
    prev_buffers number,
    default_pool_size number
);

insert into ale0402.t03_db_buffer_cache(
    block_size, 
    current_size,
    buffers,
    target_buffers,
    prev_size, 
    prev_buffers,
    default_pool_size) values(
        (select block_size from v$buffer_pool),
        (select current_size from v$buffer_pool),
        (select buffers from v$buffer_pool),
        (select target_buffers from v$buffer_pool),
        (select prev_size from v$buffer_pool),
        (select prev_buffers from v$buffer_pool),
        (select value from v$parameter where name='db_cache_size')
    );


select * from ale0402.t03_db_buffer_cache;


create table ale0402.t04_db_buffer_sysstats(
    db_blocks_gets_from_cache number,
    consistent_gets_from_cache number,
    physical_reads_cache number,
    cache_hit_radio number generated always as (trunc(1-(physical_reads_cache/(db_blocks_gets_from_cache + consistent_gets_from_cache)),6))
);

insert into ale0402.t04_db_buffer_sysstats(
    db_blocks_gets_from_cache,
    consistent_gets_from_cache,
    physical_reads_cache
) values (
    (select value as db_blocks_gets_from_cache from v$sysstat where name ='db block gets from cache'),
    (select value as consistent_gets_from_cache from v$sysstat where name ='consistent gets from cache'),
    (select value as physical_reads_cache from v$sysstat where name ='physical reads cache')
);


select * from ale0402.t04_db_buffer_sysstats;
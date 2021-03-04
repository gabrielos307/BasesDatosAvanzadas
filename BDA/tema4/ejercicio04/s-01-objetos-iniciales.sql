--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  10/01/2021
--@Descripción: Creación de los objetos iniciales

whenever sqlerror exit rollback

connect sys/system2 as sysdba
set serveroutput on

declare
  v_count number;
  v_username varchar2(30) := 'ALE0404';
  v_table1 varchar2(30) := 'T01_MEMORY_AREAS';
  v_table2 varchar2(30) := 'T02_MEMORY_PARAM_VALUES';
  v_table3 varchar2(30) := 'T03_MEMORY_PARAM_INFO';
begin
  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table1
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||v_table1;
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table2
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||v_table2;
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table3
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||v_table3;
  end if;
end;
/
--table 01
create table ale0404.t01_memory_areas(
    id number,
    sample_date varchar2(20),
    redo_buffer_size number(6,2),
    buffer_cache_size number(6,2),
    shared_pool_size number(6,2),
    large_pool_size number(5),
    java_pool_size number(2),
    sga_size number(6,2),
    sga_free_memory number(5),
    max_pga_allocated number(6,2),
    aggregate_pga_target_param number(5)
);

insert into ale0404.t01_memory_areas values(
    1,
    (SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') FROM DUAL),
    (select TRUNC(bytes/(1024*1024),2) from v$sgainfo where name='Redo Buffers'),
    (select TRUNC(bytes/(1024*1024),2) from v$sgainfo where name='Buffer Cache Size'),
    (select TRUNC(bytes/(1024*1024),2) from v$sgainfo where name='Shared Pool Size'),
    (select TRUNC(bytes/(1024*1024),2) from v$sgainfo where name='Large Pool Size'),
    (select TRUNC(bytes/(1024*1024),2) from v$sgainfo where name='Java Pool Size'),
    (select TRUNC(sum(value)/(1024*1024),2) from v$sga),
    (select TRUNC(current_size/(1024*1024),2) from v$sga_dynamic_free_memory),
    (select TRUNC(value/(1024*1024),2) from v$pgastat where name='maximum PGA allocated'),
    (select TRUNC(value/(1024*1024),2) from v$pgastat where name='aggregate PGA target parameter')
);

--tabla 02
create table ale0404.t02_memory_param_values(
    id number,
    sample_date varchar2(20),
    memory_target number(6),
    sga_target number(6),
    pga_aggregate_target number(6),
    shared_pool_size number(6),
    large_pool_size number(6),
    java_pool_size number(6),
    db_cache_size number(6)
);

insert into ale0404.t02_memory_param_values values(
    1,
    (SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') FROM DUAL),
    (select trunc(value/1048576,2) from v$parameter where name='memory_target'),
    (select trunc(value/1048576,2) from v$parameter where name='sga_target'),
    (select TRUNC(value/(1024*1024),2) from v$parameter where name='pga_aggregate_target'),
    (select TRUNC(value/(1024*1024),2) from v$parameter where name='shared_pool_size'),
    (select TRUNC(value/(1024*1024),2) from v$parameter where name='large_pool_size'),
    (select TRUNC(value/(1024*1024),2) from v$parameter where name='java_pool_size'),
    (select TRUNC(value/(1024*1024),2) from v$parameter where name='db_cache_size')
); 

--tabla 03

create table ale0404.t03_memory_param_info(
  num number(6),
  name varchar2(18),
  value number(12),
  default_value number(12),
  isdefault varchar2(5),
  isses_modifiable varchar2(5),
  issys_modifiable varchar2(10)
);

insert into ale0404.t03_memory_param_info values(
  (select num from v$parameter where name='memory_target'),
  (select name from v$parameter where name='memory_target'),
  (select value from v$parameter where name='memory_target'),
  (select default_value from v$parameter where name='memory_target'),
  (select isdefault from v$parameter where name='memory_target'),
  (select isses_modifiable from v$parameter where name='memory_target'),
  (select issys_modifiable from v$parameter where name='memory_target')
);

insert into ale0404.t03_memory_param_info values(
  (select num from v$parameter where name='memory_max_target'),
  (select name from v$parameter where name='memory_max_target'),
  (select value from v$parameter where name='memory_max_target'),
  (select default_value from v$parameter where name='memory_max_target'),
  (select isdefault from v$parameter where name='memory_max_target'),
  (select isses_modifiable from v$parameter where name='memory_max_target'),
  (select issys_modifiable from v$parameter where name='memory_max_target')
);

insert into ale0404.t03_memory_param_info values(
  (select num from v$parameter where name='sga_target'),
  (select name from v$parameter where name='sga_target'),
  (select value from v$parameter where name='sga_target'),
  (select default_value from v$parameter where name='sga_target'),
  (select isdefault from v$parameter where name='sga_target'),
  (select isses_modifiable from v$parameter where name='sga_target'),
  (select issys_modifiable from v$parameter where name='sga_target')
);

insert into ale0404.t03_memory_param_info values(
  (select num from v$parameter where name='sga_max_size'),
  (select name from v$parameter where name='sga_max_size'),
  (select value from v$parameter where name='sga_max_size'),
  (select default_value from v$parameter where name='sga_max_size'),
  (select isdefault from v$parameter where name='sga_max_size'),
  (select isses_modifiable from v$parameter where name='sga_max_size'),
  (select issys_modifiable from v$parameter where name='sga_max_size')
);

insert into ale0404.t03_memory_param_info values(
  (select num from v$parameter where name='shared_pool_size'),
  (select name from v$parameter where name='shared_pool_size'),
  (select value from v$parameter where name='shared_pool_size'),
  (select default_value from v$parameter where name='shared_pool_size'),
  (select isdefault from v$parameter where name='shared_pool_size'),
  (select isses_modifiable from v$parameter where name='shared_pool_size'),
  (select issys_modifiable from v$parameter where name='shared_pool_size')
);

insert into ale0404.t03_memory_param_info values(
  (select num from v$parameter where name='large_pool_size'),
  (select name from v$parameter where name='large_pool_size'),
  (select value from v$parameter where name='large_pool_size'),
  (select default_value from v$parameter where name='large_pool_size'),
  (select isdefault from v$parameter where name='large_pool_size'),
  (select isses_modifiable from v$parameter where name='large_pool_size'),
  (select issys_modifiable from v$parameter where name='large_pool_size')
);

insert into ale0404.t03_memory_param_info values(
  (select num from v$parameter where name='java_pool_size'),
  (select name from v$parameter where name='java_pool_size'),
  (select value from v$parameter where name='java_pool_size'),
  (select default_value from v$parameter where name='java_pool_size'),
  (select isdefault from v$parameter where name='java_pool_size'),
  (select isses_modifiable from v$parameter where name='java_pool_size'),
  (select issys_modifiable from v$parameter where name='java_pool_size')
);

insert into ale0404.t03_memory_param_info values(
  (select num from v$parameter where name='db_cache_size'),
  (select name from v$parameter where name='db_cache_size'),
  (select value from v$parameter where name='db_cache_size'),
  (select default_value from v$parameter where name='db_cache_size'),
  (select isdefault from v$parameter where name='db_cache_size'),
  (select isses_modifiable from v$parameter where name='db_cache_size'),
  (select issys_modifiable from v$parameter where name='db_cache_size')
);

insert into ale0404.t03_memory_param_info values(
  (select num from v$parameter where name='streams_pool_size'),
  (select name from v$parameter where name='streams_pool_size'),
  (select value from v$parameter where name='streams_pool_size'),
  (select default_value from v$parameter where name='streams_pool_size'),
  (select isdefault from v$parameter where name='streams_pool_size'),
  (select isses_modifiable from v$parameter where name='streams_pool_size'),
  (select issys_modifiable from v$parameter where name='streams_pool_size')
);

insert into ale0404.t03_memory_param_info values(
  (select num from v$parameter where name='log_buffer'),
  (select name from v$parameter where name='log_buffer'),
  (select value from v$parameter where name='log_buffer'),
  (select default_value from v$parameter where name='log_buffer'),
  (select isdefault from v$parameter where name='log_buffer'),
  (select isses_modifiable from v$parameter where name='log_buffer'),
  (select issys_modifiable from v$parameter where name='log_buffer')
);

--Procedure
create or replace procedure ale0404.spv_consulta_random_data is
  --declaracion del cursor
  cursor cur_cursor_ocurrencias is
  select id, r_varchar, r_char, r_integer,
  r_double, r_date, r_timestamp 
  from ale0402.t01_random_data
  order by id;  
  --declaracion de las variables
  v_registros number(5) := 0;
  v_elemento char(1);
  v_ocurrencias number(10) := 0;
  v_caracter char(1):='|';
  v_username varchar2(30) := 'ALE0404';
begin
  for c in cur_cursor_ocurrencias loop
    for i in 1..length(c.r_varchar) +1 loop
      v_elemento := substr(c.r_varchar,i,1);
      if v_elemento = v_caracter then
        v_ocurrencias := v_ocurrencias + 1;
      end if;
    end loop;
    v_registros := v_registros +1;
  end loop;
  dbms_output.put_line(
    'Número de registros totales para el caracter '||v_caracter||' fue:'
    ||v_ocurrencias||' ocurrencias');
  dbms_output.put_line('Registros totales: '||v_registros);
end;
/
show errors

whenever sqlerror continue

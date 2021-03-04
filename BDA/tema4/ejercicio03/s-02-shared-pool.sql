--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  02/01/2021
--@Descripción: Creación de la tabla Shared Pool 

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba


declare
  v_count number;
  v_username varchar2(30) := 'ALE0403';
  v_table varchar2(30) := 'T02_SHARED_POOL';
begin
  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||v_table;
  end if;
end;
/

create table ale0403.t02_shared_pool(
    shared_pool_param_mb number(10,5),
    shared_pool_sga_info_mb number(10,5),
    resizeable char(3),
    shared_pool_component_total number(10,5),
    shared_pool_free_memory number(10,5)
);


insert into ale0403.t02_shared_pool values(
	(select value from v$parameter where name='shared_pool_size'),
	(select TRUNC(bytes/(1024*1024),5) from v$sgainfo where name='Shared Pool Size'),
	(select resizeable from v$sgainfo where name='Shared Pool Size'),
	(select count(pool) from v$sgastat where pool='shared pool'),
	(select TRUNC(bytes/(1024*1024),5) from v$sgastat where name='free memory' and pool = 'shared pool')
);

whenever sqlerror continue
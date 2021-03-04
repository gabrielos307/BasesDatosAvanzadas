--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  02/01/2021
--@Descripción: Creación de la tabla PGA STATS

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba


declare
  v_count number;
  v_username varchar2(30) := 'ALE0403';
  v_table varchar2(30) := 'T03_PGA_STATS';
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

create table ale0403.t03_pga_stats(
    max_pga_mb number(12,5),
    pga_target_parameter_mb number(7),
    pga_total_actual_mb number(10),
    pga_in_use_actual_mb number(12,5),
    pga_free_memory_mb number(12,5),
    pga_process_count number,
    pga_in_use_workareas_auto number
);


insert into ale0403.t03_pga_stats values(
    (select TRUNC(value/(1024*1024),5) valor_mb from v$pgastat where name='maximum PGA allocated'),
    (select TRUNC(value/(1024*1024),5) valor_mb from v$pgastat where name='aggregate PGA target parameter'),
    (select TRUNC(value/(1024*1024),5) valor_mb from v$pgastat where name='total PGA allocated'),
    (select TRUNC(value/(1024*1024),5) valor_mb from v$pgastat where name='total PGA inuse'),
    (select TRUNC(value/(1024*1024),5) valor_mb from v$pgastat where name='total freeable PGA memory'),
    (select value from v$pgastat where name='process count'),
    (select value from v$pgastat where name='total PGA used for auto workareas')    
);

whenever sqlerror continue
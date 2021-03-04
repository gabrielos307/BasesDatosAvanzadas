--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  02/01/2021
--@Descripción: Creación de las tablas HIST PGA STATS y HIST PGA PROCESS 
whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba


declare
  v_count number;
  v_username varchar2(30) := 'ALE0403';
  v_table varchar2(30) := 'T05_HIST_PGA_STATS';
  v_table1 varchar2(30) := 'T06_HIST_PGA_PROCESS';
begin
  --Verificar si la table existe T05_HIST_PGA_STATS
  select count(*) into v_count
  from all_tables
  where table_name = v_table
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||v_table;
  end if;

   --Verificar si la table existe T06_HIST_PGA_PROCESS
  select count(*) into v_count
  from all_tables
  where table_name = v_table1
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||v_table1;
  end if;
end;
/

create table ale0403.t05_hist_pga_stats(
sample_date varchar2(20),
max_pga_mb number ,
pga_target_parameter_mb number ,
pga_total_actual_mb number ,
pga_in_use_actual_mb number ,
pga_free_memory_mb number ,
pga_process_count number ,
pga_in_use_workareas_auto number
);

create table ale0403.t06_hist_pga_process (
sample_date varchar2(20),
process_type varchar2(15),
total_process number,
total_pga_allocated_mb number,
total_pga_used_mb number
);


whenever sqlerror continue
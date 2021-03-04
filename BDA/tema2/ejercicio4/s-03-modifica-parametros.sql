connect sys/system2 as sysdba

whenever sqlerror exit rollback
set serveroutput on



alter session set nls_date_format = 'dd/mm/yyyy hh24:mi:ss';
alter system set db_writer_processes=2 scope=spfile;
--alter system set db_writer_processes=1 scope=spfile;
alter system set log_buffer = 7776256 scope=spfile;
--alter system set log_buffer = 7766016 scope=spfile;
alter system set db_files = 250 scope=spfile;
--alter system set db_files = 200 scope=spfile;
alter system set dml_locks = 2500 scope=spfile;
--alter system set dml_locks = 1424 scope=spfile;
alter system set transactions = 600 scope=spfile;
--alter system set transactions = 356 scope=spfile;
alter session set hash_area_size = 136192;
alter system set hash_area_size = 136192 scope=spfile;
--alter system set hash_area_size = 131072 scope=spfile;
alter session set sort_area_size = 70656;
alter system set sql_trace = true scope=memory;
alter system set optimizer_mode = FIRST_ROWS_100 scope=both;
alter session set cursor_invalidation = deferred;


declare
  v_count number;
  v_username varchar2(20):= 'ALE0204';
  v_table1 varchar2(30):= 'T03_UPDATE_PARAM_SESSION';
  v_table2 varchar2(30):= 'T04_UPDATE_PARAM_INSTANCE';
  v_table3 varchar2(30):= 'T05_UPDATE_PARAM_SPFILE';

begin

  -- Comprobando la existencia de la tabla param_session
  select count(*) into v_count
  from all_tables
  where table_name = v_table1;

  -- Eliminando tabla en caso de existir param_session
  if v_count > 0 then
    execute immediate 'drop table '||v_username||'.'||v_table1;
  end if;

  -- Comprobando la existencia de la tabla param_instance
  select count(*) into v_count
  from all_tables
  where table_name = v_table2;

  -- Eliminando tabla en caso de existir param_instance
  if v_count > 0 then
    execute immediate 'drop table '||v_username||'.'||v_table2;
  end if;

  -- Comprobando la existencia de la tabla param_spfile
  select count(*) into v_count
  from all_tables
  where table_name = v_table3;

  -- Eliminando tabla en caso de existir param_spfile
  if v_count > 0 then
    execute immediate 'drop table '||v_username||'.'||v_table3;
  end if;  

end;
/

--parametros modificados en la sesión v$parameter
create table ale0204.t03_update_param_session as
select name,value
from v$parameter
where name in (
'cursor_invalidation','optimizer_mode',
'sql_trace','sort_area_size','hash_area_size','nls_date_format',
'db_writer_processes','db_files','dml_locks','log_buffer','transactions'
)
and value is not null;

--parametros modificados en instancia v$system_paramete
create table ale0204.t04_update_param_instance as
select name,value
from v$system_parameter
where name in (
'cursor_invalidation','optimizer_mode',
'sql_trace','sort_area_size','hash_area_size','nls_date_format',
'db_writer_processes','db_files','dml_locks','log_buffer','transactions'
)
and value is not null;

--parametros modificados en spfile v$spparameter
create table ale0204.t05_update_param_spfile as
select name,value
from v$spparameter
where name in (
'cursor_invalidation','optimizer_mode',
'sql_trace','sort_area_size','hash_area_size','nls_date_format',
'db_writer_processes','db_files','dml_locks','log_buffer','transactions'
)
and value is not null;

create 
pfile='/unam-bda/ejercicios-practicos/t0204/e-03-spparameter-pfile.txt' 
from spfile;    


whenever sqlerror continue






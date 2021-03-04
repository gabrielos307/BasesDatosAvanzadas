--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  02/01/2021
--@Descripción: Creación de la tabla Redo Log Buffer

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba


declare
  v_count number;
  v_username varchar2(30) := 'ALE0403';
  v_table varchar2(30) := 'T01_REDO_LOG_BUFFER';
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

create table ale0403.t01_redo_log_buffer(
    redo_buffer_size_param_mb number(10,5),
    redo_buffer_sga_info_mb number(10,5),
    resizeable char(3)
);

insert into ale0403.t01_redo_log_buffer values (
	(select TRUNC(value/(1024*1024),5) from v$parameter where name='log_buffer'),
	(select TRUNC(bytes/(1024*1024),5) from v$sgainfo where name='Redo Buffers'),
	(select resizeable from v$sgainfo where name='Redo Buffers')
);


whenever sqlerror continue
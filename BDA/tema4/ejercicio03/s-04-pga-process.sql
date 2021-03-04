--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  02/01/2021
--@Descripción: Creación de la tabla PGA PROCESS

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba


declare
  v_count number;
  v_username varchar2(30) := 'ALE0403';
  v_table varchar2(30) := 'T04_PGA_PROCESS';
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

create table ale0403.t04_pga_process(
    process_type varchar2(15),
    total_process number(4),
    total_pga_allocated_mb number(8,2),
    total_pga_used_mb number(8,2)
);

insert all into ale0403.t04_pga_process values(
	'bkg-process',
	(select count(*) from v$process where pname is not null),
	(select TRUNC(sum(PGA_ALLOC_MEM)/(1024*1024),2) from v$process where pname is not null),
	(select TRUNC(sum(PGA_USED_MEM)/(1024*1024),2) from v$process where pname is not null)
) into ale0403.t04_pga_process values(
	'other-process',
	(select count(*) from v$process where pname is null),
	(select TRUNC(sum(PGA_ALLOC_MEM)/(1024*1024),2) from v$process where pname is null),
	(select TRUNC(sum(PGA_USED_MEM)/(1024*1024),2) from v$process where pname is null)
) select * from dual;



whenever sqlerror continue
--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  10/01/2021
--@Descripción: Administración de componentes para memoria compartida automática

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba
select (
(select sum(value) from v$sga) -
(select current_size from v$sga_dynamic_free_memory)
) "sga_target"
from dual;

/*
memory_target = sga_target + max(pga_agregate_target, maximum pga allocated)

memory_target = 500 + max(268,361.85)
*/
alter system set db_cache_size = 0M scope=memory;
alter system set shared_pool_size = 0M scope=memory;
alter system set large_pool_size = 0M scope=memory;
alter system set java_pool_size = 0M scope=memory;
alter system set streams_pool_size = 0M scope=memory;

alter system set memory_target = 0M scope=memory;
alter system set sga_target = 500M scope=memory;
alter system set pga_aggregate_target = 268M scope=memory;

exec dbms_session.sleep(5);

insert into ale0404.t02_memory_param_values values(
    2,
    (SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') FROM DUAL),
    (select trunc(value/1048576,2) from v$parameter where name='memory_target'),
    (select trunc(value/1048576,2) from v$parameter where name='sga_target'),
    (select TRUNC(value/(1024*1024),2) from v$parameter where name='pga_aggregate_target'),
    (select TRUNC(value/(1024*1024),2) from v$parameter where name='shared_pool_size'),
    (select TRUNC(value/(1024*1024),2) from v$parameter where name='large_pool_size'),
    (select TRUNC(value/(1024*1024),2) from v$parameter where name='java_pool_size'),
    (select TRUNC(value/(1024*1024),2) from v$parameter where name='db_cache_size')
); 
commit;


whenever sqlerror continue
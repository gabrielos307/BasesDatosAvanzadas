--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  14/10/2021
--@Descripción: Administración de memoria automática

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba
select (
(select sum(value) from v$sga) -
(select current_size from v$sga_dynamic_free_memory)
) "sga_target"
from dual;

alter system set memory_target = 768M scope=memory;

alter system set sga_target = 0M scope=memory;
alter system set pga_aggregate_target = 0M scope=memory;

alter system set db_cache_size = 0M scope=memory;
alter system set shared_pool_size = 0M scope=memory;
alter system set large_pool_size = 0M scope=memory;
alter system set java_pool_size = 0M scope=memory;

exec dbms_session.sleep(10);


insert into ale0404.t02_memory_param_values values(
    4,
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
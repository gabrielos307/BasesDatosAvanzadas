--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  14/01/2021
--@Descripción: Administración de componentes para memoria compartida manual

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba
select (
(select sum(value) as value from v$sga) -
(select current_size from v$sga_dynamic_free_memory)
) "sga_target"
from dual;

alter system set db_cache_size = 208M scope=memory;
alter system set shared_pool_size = 200M scope=memory;
alter system set large_pool_size = 4M scope=memory;
alter system set java_pool_size = 4M scope=memory;

alter system set pga_aggregate_target = 450M scope=memory;
alter system set memory_target = 0M scope=memory;

alter system set sga_target=0M scope=memory;

exec dbms_session.sleep(5);

insert into ale0404.t02_memory_param_values values(
    3,
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

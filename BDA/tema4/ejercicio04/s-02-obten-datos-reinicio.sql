--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  10/01/2021
--@Descripción: Reinicio de la Base de datos 

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba

shutdown
startup

insert into ale0404.t01_memory_areas values(
    2,
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
commit;


whenever sqlerror continue

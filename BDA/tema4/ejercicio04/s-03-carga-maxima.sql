--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  10/01/2021
--@Descripción: Carga máxima para evaluar la memoria

whenever sqlerror exit rollback

connect sys/system2 as sysdba
set serveroutput on
set timing on
exec ale0404.spv_consulta_random_data
set timing off

insert into ale0404.t01_memory_areas values(
    3,
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

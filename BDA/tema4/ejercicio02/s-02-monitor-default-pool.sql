--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  14/11/2020
--@Descripción: 

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba
declare
v_count number;
v_username varchar2(30) := 'ALE0402';
begin
--Verificar si la table existe
select count(*) into v_count
from all_tables
where table_name='T01_RANDOM_DATA'
and owner = v_username;

if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||'t01_random_data';
end if;

--Verificar si la table existe
select count(*) into v_count
from all_tables
where table_name='T02_DB_CACHE_STATS'
and owner = v_username;

if v_count > 0 then
    execute immediate 'drop table '|| v_username ||'.'||'t02_db_cache_stats';
end if;


end;
/
create table ale0402.t01_random_data(
    id number(18,0),
    r_varchar varchar2(1024),
    r_char char(18),
    r_integer number(10,0),
    r_double number(20,10),
    r_date date,
    r_timestamp timestamp
);
--drop sequence ale0402.seq_t01_random_data;
create sequence ale0402.seq_t01_random_data;
/*
insert into ale0402.t01_random_data(
    id, 
    r_varchar, 
    r_char, 
    r_integer, 
    r_double, 
    r_date, 
    r_timestamp)
    values (
        seq_t01_random_data.nextval,
        sys.dbms_random.string('P', 1024),
        sys.dbms_random.string('U', 18),
        trunc(sys.dbms_random.value(1,9999999999)),
        trunc(sys.dbms_random.value(1,9999999999)),
        to_date(trunc(sys.dbms_random.value(1721424,5373484)), 'J') + sys.dbms_random.normal,
        current_timestamp);
*/
create table ale0402.t02_db_cache_stats(
    sample_date varchar2(20),
    db_blocks_gets_from_cache number,
    consistent_gets_from_cache number,
    physical_reads_cache number,
    cache_hit_radio number generated always as (trunc(1-(physical_reads_cache/(db_blocks_gets_from_cache + consistent_gets_from_cache)),6))
);


--select sum(length(r_varchar)) from ale0402.t01_random_data where id = sys.dbms_random.value(?,?)
/*
insert into ale0402.t02_db_cache_stats(
    sample_date,
    db_blocks_gets_from_cache,
    consistent_gets_from_cache,
    physical_reads_cache
) values ((SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') FROM DUAL),
(select value as db_blocks_gets_from_cache from v$sysstat where name ='db block gets from cache'),
(select value as consistent_gets_from_cache from v$sysstat where name ='consistent gets from cache'),
(select value as physical_reads_cache from v$sysstat where name ='physical reads cache')
);
*/


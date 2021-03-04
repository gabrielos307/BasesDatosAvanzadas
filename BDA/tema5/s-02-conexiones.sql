--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  14/11/2020
--@Descripción: 

whenever sqlerror exit rollback
set serveroutput on
connect sys@ahgbda2_dedicated as sysdba



declare
  v_count number;
  v_username varchar2(30) := 'ALE0501';
  v_table1 varchar2(30) := 'T01_SESSION_DATA';
begin
  --Verificar si la table existe
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

create table ale0501.t01_session_data (
    id number,
    sid number,
    logon_time date,
    username varchar2(20),
    status varchar2(8),
    server varchar2(20),
    osuser varchar2(30),
    process varchar2(12),
    port number
);

insert into ale0501.t01_session_data(
id,sid,logon_time,username,status,server,
osuser,process,port)
select 1,sid,logon_time,username,status,server,
    osuser,process,port from v$session where username = 'SYS';


connect sys@ahgbda2_shared as sysdba

insert into ale0501.t01_session_data(
id,sid,logon_time,username,status,server,
osuser, process,port) 
select 2,sid,logon_time,username,status,server,
    osuser, process,port from v$session where username = 'SYS';

connect ale0501@ahgbda2_dedicated 

insert into ale0501.t01_session_data(
id,sid,logon_time,username,status,server,
osuser,process,port) 
select 3,sid,logon_time,username,status,server,
    osuser, process,port from v$session where username = 'SYS';
disconnect;

connect ale0501@ahgbda2_shared

insert into ale0501.t01_session_data(
id,sid,logon_time,username,status,server,
osuser, process,port) 
select 4,sid,logon_time,username,status,server,
    osuser, process,port from v$session where username = 'SYS';


whenever sqlerror continue





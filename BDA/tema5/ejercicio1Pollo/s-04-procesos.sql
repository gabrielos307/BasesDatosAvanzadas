--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  16/11/2020
--@Descripción: 

whenever sqlerror exit rollback
set serveroutput on
connect sys@ahgbda2 as sysdba

create table ale0501.t07_session_info_context as(
    select sys_context('USERENV','HOST') as host,
    select sys_context('OS_USER') as os_user,
    select sys_context('SESSION_USERID') as user_id,
    select sys_context('SESSIONID') as session_id
    from dual;
);

create table ale0501.t08_session_info_view as(
  select s.sid as session_id,s.paddr as process_address,
  s.username bd_username,s.status as session_status,
  s.port as client_port,s.process as os_client_process_id, --
  s.program as client_program from v$process p 
  join gv$session s on p.addr=s.paddr 
  join (select sys_context('USERENV','SID') as session_id
  from dual) c on c.session_id=s.sid where s.username = 'SYS'
);

create table ale0501.t09_process_info as(
    select sosis,pname,background, tracefile from v$process
	join gv$session s on addr=s.paddr join ( 
    select sys_context('USERENV','SID') as session_id
    from dual) c on s.sid = q.session_id 
);

create table ale0501.t10_background_process as(
    select addr, sosid, pname,username, background 
    from v$process where background='1'
);

create table ale0501.t11_foreground_process as(
    select p.addr, p.sosid, p.pname, p.username, s.username, p.background 
    from v$process p left outer join v$session s 
    on(p.addr=s.paddr) where p.background is null
);

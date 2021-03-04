
--@Autor:  Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  14/11/2020
--@Descripción: 

whenever sqlerror exit rollback
set serveroutput on
connect sys@ahgbda2 as sysdba


create table ale0501.t02_dispatcher_config as(
  select 1 as id,dispatchers,connections,sessions,
  service from v$dispatcher_config
);

create table ale0501.t03_dispatcher as(
  select 1 as id,name,network,status,messages,
  trunc(bytes/(1024*1024),2) messages_mb,
  (select count(*) from v$circuit) circuits_created, --no sé si esto se pueda
  --sustituir por created from v$dispatcher
  trunc(idle/(60*60),2) idle_min
  from v$dispatcher
);


create table ale0501.t04_shared_server as(
  select 1 as id,name,status,messages,
  trunc(bytes/(1024*1024),2) messages_mb, 
  requests,trunc(idle/(60*60),2) idle_min,
  trunc(busy/(60*60) busy_min,2)
  from v$shared_server
);

create table ale0501.t05_queue(
    id number,
    queued number,
    wait number,
    totalq number
);

create table ale0501.t05_queue as(
  select 1 as id,queued,wait,totalq from v$queue
);

create table ale0501.t06_virtual_circuit as(
  select 1 as id,c.circuit,d.name,c.server,c.status,c.queue
  from v$dispatcher dp on v$circuit c 
    dp.paddr=c.dispatcher
);

whenever sqlerror continue

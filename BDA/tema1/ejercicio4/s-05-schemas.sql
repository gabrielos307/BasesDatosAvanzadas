--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  11/10/2020
--@Descripción:     
whenever sqlerror exit rollback;
Prompt conectando con usuario ale0104
connect ale0104/ale


declare
  v_count number;
begin
  select count(*) into v_count
  from user_tables
  where table_name ='T04_MY_SCHEMA';
  if v_count > 0 then
    execute immediate 'drop table t04_my_schema';
  end if;
end;
/

Prompt creando tabla t04_my_schema

create table t04_my_schema (
  username varchar2(128),
  schema_name varchar2(128)
);

Prompt otorgando privilegios para insertar en t04_my_schema
Prompt Para el usuario ale0104 cuando autentique sysdba => esquema:sys

grant insert on ale0104.t04_my_schema to sys;

Prompt Para el usuario ale0105 cuando autentique como sysoper => esquema:public

grant insert on ale0104.t04_my_schema to public;

Prompt Para el usaurio ale0106 cuando autentique como sysbackup => esquema:sysbackup

grant insert on ale0104.t04_my_schema to sysbackup;

Prompt insertando en t04_my_schema con ale0104 as sysdba
connect ale0104/ale as sys
insert into ale0104.t04_my_schema(username, schema_name)
values(
  sys_context('USERENV', 'CURRENT_USER'),
  sys_context('USERENV', 'CURRENT_SCHEMA')
);

Prompt insertando en t04_my_schema con ale0105 as sysoper
connect ale0105/ale as sysoper
insert into ale0104.t04_my_schema(username, schema_name)
values(
  sys_context('USERENV', 'CURRENT_USER'),
  sys_context('USERENV', 'CURRENT_SCHEMA')
);

Prompt insertando en t04_my_schema con ale0106 as sysbackup
connect ale0106/ale as sysbackup
insert into ale0104.t04_my_schema(username, schema_name)
values(
  sys_context('USERENV', 'CURRENT_USER'),
  sys_context('USERENV', 'CURRENT_SCHEMA')
);

commit;
Prompt conectandose a sys
connect sys/hola1234# as sysdba

Prompt mostrando datos del archivo de passwords en v$pwfile_users

set linesize window
col username format a20
select username, sysdba, sysoper, sysbackup, last_login
from v$pwfile_users;

Prompt cambiando el password de sys
alter user sys identified by system1;



whenever sqlerror continue none
--disconnect
--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  11/10/2020
--@Descripción:     Se crean las tablas donde se almacenan los roles que tienen los usuarios tanto administradores como normales 

whenever sqlerror exit rollback;
set serveroutput on

connect sys as sysdba

declare
    v_count number;
begin
    select count(*) into v_count
    from all_tables
    where table_name ='T02_DB_ROLES'
    and owner = 'ALE0104';

    if v_count > 0 then
        --eliminar table
        execute immediate 'drop table ale0104.t02_db_roles';
    end if;
end;
/
Prompt creando tabla ale0104.t02_db_roles

create table ale0104.t02_db_roles(
    role_id number,
    role varchar2(120)
);


Prompt insertando datos

insert into ale0104.t02_db_roles (role_id, role)
    select role_id, role
    from dba_roles;

Prompt seccion para la tabla de privilegios
declare
    v_count number;
begin
    select count(*) into v_count
    from all_tables
    where table_name ='T03_DBA_PRIVS'
    and owner = 'ALE0104';

    if v_count > 0 then
        --eliminar table
        execute immediate 'drop table ale0104.t03_dba_privs';
    end if;
end;
/
Prompt creando tabla ale0104.t02_dba_privs

create table ale0104.t03_dba_privs(
    privilege varchar2(128)
);

Prompt insertando datos para la tabla privs

insert into ale0104.t03_dba_privs (privilege)
    select privilege
    from dba_sys_privs;


whenever sqlerror continue none
disconnect 
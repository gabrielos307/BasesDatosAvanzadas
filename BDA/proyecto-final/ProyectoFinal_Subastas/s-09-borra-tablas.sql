--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  10/01/2021
--@Descripción: Creación de los objetos iniciales

whenever sqlerror exit rollback

connect sys/system2 as sysdba
set serveroutput on

declare
  v_count number;
  v_username1 varchar2(30) := 'admin_users';
  v_username2 varchar2(30) := 'admin_objects'
  v_table1 varchar2(30) := 'PAIS';
  v_table2 varchar2(30) := 'USUARIO';
  v_table3 varchar2(30) := 'STATUS';
  v_table4 varchar2(30) := 'OBJETO';
  v_table5 varchar2(30) := 'MARCA';
  v_table6 varchar2(30) := 'MODELO';
  v_table7 varchar2(30) := 'AUTO';
  v_table8 varchar2(30) := 'BANCO';
  v_table9 varchar2(30) := 'CASA';
  v_table10 varchar2(30) := 'TARJETA';
  v_table11 varchar2(30) := 'CUENTA_BANCARIA';
  v_table12 varchar2(30) := 'FACTURA';
  v_table13 varchar2(30) := 'FACTURA_OBJETO';
  v_table14 varchar2(30) := 'FOTO_OBJETO';
  v_table15 varchar2(30) := 'HACIENDA';
  v_table16 varchar2(30) := 'HISTORICO_STATUS';
  v_table17 varchar2(30) := 'SUBASTA';
  v_table18 varchar2(30) := 'SUBASTA_OBJETO';
  v_table19 varchar2(30) := 'OFERTA';


connect admin_users/ausers
begin
  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table1
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username1 ||'.'||v_table1 ||'cascade contraint';
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table2
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username1 ||'.'||v_table2 ||'cascade contraint';
  end if;
connect admin_objects/ausers
  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table3
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table3 ||'cascade contraint';
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table4
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table4 ||'cascade contraint';
  end if;
  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table5
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table5 ||'cascade contraint';
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table6
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table6 ||'cascade contraint';
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table7
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table7 ||'cascade contraint';
  end if;

  connect admin_users/ausers
  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table8
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username1 ||'.'||v_table8 ||'cascade contraint';
  end if;

connect admin_objects/aobjects
  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table9
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table9 ||'cascade contraint';
  end if;

connect admin_users/ausers
  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table10
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username1 ||'.'||v_table10 ||'cascade contraint';
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table11
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username1 ||'.'||v_table11 ||'cascade contraint';
  end if;

connect admin_objects
/aobjects
  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table12
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table12 ||'cascade contraint';
  end if;
  
  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table13
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table13 ||'cascade contraint';
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table14
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table14 ||'cascade contraint';
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table15
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table15 ||'cascade contraint';
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table16
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table16 ||'cascade contraint';
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table17
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table17 ||'cascade contraint';
  end if;

  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table18
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username2 ||'.'||v_table18 ||'cascade contraint';
  end if;

connect admin_users/ausers
  --Verificar si la table existe
  select count(*) into v_count
  from all_tables
  where table_name = v_table19
  and owner = v_username;
  --Si existe la tabla, entonces se borra
  if v_count > 0 then
    execute immediate 'drop table '|| v_username1 ||'.'||v_table19 ||'cascade contraint';
  end if;
end;
/
show errors

whenever sqlerror continue
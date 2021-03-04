whenever sqlerror exit rollback;
set serveroutput on
declare
  v_count number;
  v_username varchar2(30) := 'ALE0104';
begin
  select count(*) into v_count
  from all_users
  where username = v_username;
  if v_count = 0 then
    --creando usuario
    execute immediate ' 
      create user '
      || v_username
      ||' identiefied by ale01 quota unlimited on users';
    --Privilegios minimos
    execute immediate 'grant create table, create session to ' ||v_username;
  else
    dbms_output.put_line('El usuario '||v_username||' ya existe');
  end if;
  --crear la tabl t01_db_version
  select count(*) into v_count
  from all_tables
  where table_name = 'T01_DB_VERSION'
  and owner = v_username;
  --eliminar la tabla en caso de existir
  if v_count >0 then
    execute immediate 'drop table '||v_username||'.T01_DB_VERSION';
  end if;

  --creando tabla
  execute immediate '
    create table '||v_username||'.T01_DB_VERSION (
      product varchar2(100),
      version varvhar2(50),
      version_full varchar2(50)
    )
  ';
  --insertando datos.
  execute immediate 'insert into '||v_username||'.t01_db_version (
    product, version, version_full 
  ) select producto, version, version_full from product_component_version';
  commit;
end;
/

whenever sqlerror continue none
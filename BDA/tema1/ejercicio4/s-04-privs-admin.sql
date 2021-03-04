--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  11/10/2020
--@Descripción:     Se asignan otorgan permisos a los usuarios  

whenever sqlerror exit rollback;
Prompt conectando como usuario SYS
connect sys/hola1234# as sysdba
set serveroutput on
Prompt validando la existencia de usuarios

declare 
  v_count number;
  cursor cur_usuarios is
    select username
    from all_users
    where username in ('ALE0105', 'ALE0106');
begin
  for row in cur_usuarios loop
    dbms_output.put_line('Eliminando al usuario '||row.username);
    execute immediate 'drop user '||row.username||' cascade';
  end loop; 

end;
/

Prompt creando usuarios ALE0105

create user ale0105 identified by ale;
grant create session to ale0105;

Prompt creando usuarios ALE0106

create user ale0106 identified by ale;
grant create session to ale0106;

Prompt asignando privilegios de administracion
grant sysdba to ALE0104;
grant sysoper to ALE0105;
grant sysbackup to ALE0106;

whenever sqlerror continue none
disconnect



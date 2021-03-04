
connect sys as sysdba
whenever sqlerror exit rollback
set serveroutput on


declare
v_count number;
v_username varchar2(30) := 'ALE0204';
v_table varchar2(30):= 'T02_OTHER_PARAMETERS';

begin
    select count(*) into v_count
        from all_tables
        where table_name = v_table;

    if v_count > 0 then
		  execute immediate 'drop table '|| v_username ||'.'||v_table;
		end if;

    execute immediate 'create table '||v_username||'.'||v_table||'(
        num NUMBER,
        name varchar2(80),
        value varchar2(4000),
        display_value varchar2(4000),
        isdefault varchar2(9),
        is_session_modifiable varchar2(5),
        is_system_modifiable varchar2(9) 
    )';
    dbms_output.put_line('aquiiii');
    execute immediate 'insert into '||v_username||'.'||v_table||'(
    num, name, value, display_value, isdefault, is_session_modifiable, is_system_modifiable) 
    select num, name, value, display_value, isdefault, isses_modifiable, issys_modifiable from v$parameter  ';

end;
/

whenever sqlerror continue

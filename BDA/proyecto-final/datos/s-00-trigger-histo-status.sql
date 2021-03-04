--@Autor: 
--@Fecha Creacion:
--@Descripcion:

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba

drop sequence admin_objects.historico_status_object_seq;

create sequence admin_objects.historico_status_object_seq
start with 1
increment by 1
maxvalue 200;

create or replace trigger hist_status_trigger
    after insert or update or delete of status_id on admin_objects.status
    for each row 
    declare 
    v_hist_stat number(10,0);
    v_status_id number(2,0);
    v_fecha_status date;
    v_objeto number(10,0);

begin
    --crear secuencia de historico
    select historico_status_object_seq.nextval into v_hist_stat from dual;
    --status
    v_status_id := :new.status_id;
    v_fecha_status := :new.fecha_status;
    v_objeto := :new.objeto_id;
    --insertando
    insert into admin_objects.historico_status
    (historico_status_id, objeto_id, status_id, fecha_status) 
    values (v_hist_stat, v_objeto_m v_status_id, v_fecha_status);
end;

whenever sqlerror continue

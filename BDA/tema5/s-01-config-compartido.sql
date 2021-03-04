--@Autor:           Herrera Gandarela Gabriel Alejandro
--@Fecha creación:  14/11/2020
--@Descripción: 

whenever sqlerror exit rollback
set serveroutput on
connect sys/system2 as sysdba


alter system set dispatchers='(dispatchers=2)(protocol=tcp)' scope=memory;
alter system set shared_servers=4 scope=memory;
alter system register;

!lsnrctl services


whenever sqlerror continue



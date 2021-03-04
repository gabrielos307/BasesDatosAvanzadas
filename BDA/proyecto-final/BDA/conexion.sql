--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion: 04/02/2021
--@Descripcion: Modos de conexion

whenever sqlerror exit rollback
set serveroutput on 
connect sys as sysdba

alter system set dispatchers='(dispathcers=2)(protocol=tcp)' scope=both;
alter system set shared_servers=4 scope=both;
alter system register;

!lsnrctl services

whenever sqlerror continue

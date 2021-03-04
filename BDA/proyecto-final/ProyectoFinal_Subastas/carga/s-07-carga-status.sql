--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion:7/02/2021
--@Descripcion: Insercion a tabla status
whenever sqlerror exit rollback
set serveroutput on 
connect admin_objects/aobjects

insert into status (status_id,status) values (1,'Disponible para subasta');
insert into status (status_id,status) values (2,'Comprado');
insert into status (status_id,status) values (3,'Entregado al cliente');
insert into status (status_id,status) values (4,'Descontinuado');
--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion: 0/02/2021
--@Descripcion: Insercion a tabla banco

whenever sqlerror exit rollback
set serveroutput on 
connect admin_users/ausers

Prompt Inserciones
insert into banco (banco_id, clave_banco, descripcion_banco, nombre_banco) values (1, 'CRDS', 'tortor sollicitudin mi sit amet lobortis sapien', 'Crossroads Systems, Inc.');
insert into banco (banco_id, clave_banco, descripcion_banco, nombre_banco) values (2, 'SNAK', 'massa id nisl venenatis lacinia aenean sit', 'Inventure Foods, Inc.');
insert into banco (banco_id, clave_banco, descripcion_banco, nombre_banco) values (3, 'EOI', 'eleifend pede libero quis orci nullam ', 'Eaton Vance Enhance Equity Income Fund');
insert into banco (banco_id, clave_banco, descripcion_banco, nombre_banco) values (4, 'OBSV', 'consequat varius integer ac leo odio', 'ObsEva SA');
insert into banco (banco_id, clave_banco, descripcion_banco, nombre_banco) values (5, 'LXP', 'eleifend quam a odio in hac habitasse platea dictumst', 'Lexington Realty Trust');
insert into banco (banco_id, clave_banco, descripcion_banco, nombre_banco) values (6, 'IRDM', 'nulla integer pede justo lacinia eget', 'Iridium Communications Inc');
insert into banco (banco_id, clave_banco, descripcion_banco, nombre_banco) values (7, 'CPA', 'donec diam neque vestibulum', 'Copa Holdings, S.A.');
insert into banco (banco_id, clave_banco, descripcion_banco, nombre_banco) values (8, 'WAFD', 'in felis eu sapien  proin eu mi', 'Washington Federal, Inc.');
insert into banco (banco_id, clave_banco, descripcion_banco, nombre_banco) values (9, 'KR', 'phasellus sit amet erat nulla', 'Kroger Company (The)');
--insert into banco (banco_id, clave_banco, descripcion_banco, nombre_banco) values (10, 'RFAP', 'ipsum integer a nibh aliquam', 'First Trust RiverFront Dynamic ');

--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha creacion: 19/10/2020
--@Descripcion: Creando el archivo binario SPFILE
Prompt Proporcione el password de sys
connect sys/hola1234* as sysdba

Prompt Conectando a sys
whenever sqlerror exit rollback;
set serveroutput on
Prompt iniciando la instancia con nomount
startup nomount
create spfile from pfile;
!ls $ORACLE_HOME/dbs/spfileahgbda2.ora

/
whenever sqlerror continue none
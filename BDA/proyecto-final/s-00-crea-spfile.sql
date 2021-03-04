-- @Autor : Flores García Karina y Herrera Gandarela Gabriel Alejandro
-- @Fecha creacion : 6/02/2021
-- @Descripcion : Creacion del archivo pfile

Prompt Proporcione el password de sys
connect sys as sysdba
Prompt Conectando como sys
whenever sqlerror exit rollback;
set serveroutput on

startup nomount
create spfile from pfile;
Prompt Verificando el nomount
!ls$ORACLE_HOME/dbs/spfileflheproy.ora
/
whenever sqlerror continue none
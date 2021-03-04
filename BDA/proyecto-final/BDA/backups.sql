--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion: 04/02/2021
--@Descripcion: Creacion de backups

rman target sys @offline_full_whole.rman


--politica de retencion

configure retention policy to recovery windows of 7 days;  --1
--deshabilita
--configure retention policy to none;

--run obsolete
--Configura los archive logs
configure archivelog deletion policy
to backed up 2 times to disk;


backup type to compressed backupset;
configure backup optimization on;
configure channel device type disk format '/disk_7/app/oracle/oradata/FLHEPROY/backups/ora_df%t_s%s_s%p';

backup database format "/disk_7/app/oracle/oradata/FLHEPROY/backups/arch-D_%d-id-%I_S-%e_T-%h_A-%a_%u";
backup database format "/disk_7/app/oracle/oradata/FLHEPROY/backups/cf-D_%d-id-%I_%u";



backup as backupset incremental level 0 database;
backup as backupset incremental level 1 cumulative database;



--backup database plus archivelog tag full_objetos;


--VISTAS

--v$backup_files
--v$backup_set
--v$backup_piece
--v$rman_configuration
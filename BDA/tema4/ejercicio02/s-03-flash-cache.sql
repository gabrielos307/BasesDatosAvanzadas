connect sys/system2 as sysdba

whenever sqlerror exit rollback
set serveroutput on



create pfile='/u04/db_flash_cache/initahgbda2.ora' from spfile;   

ALTER SYSTEM SET DB_FLASH_CACHE_FILE = '/u04/db_flash_cache/ahgbda2_flash.cache' SCOPE=SPFILE;
alter system set db_flash_cache_size=50M scope=spfile;


whenever sqlerror continue

--startup pfile='/u01/app/oracle/product/18.0.0/dbhome_1/dbs/initahgbda2.ora'



--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion: 07/02/2021
--@Descripcion: Carga de datos a pais
whenever sqlerror exit rollback
set serveroutput on 
connect admin_users/ausers

insert into pais (pais_id, clave, nombre_pais) values (1, 'JP', 'Japan');
insert into pais (pais_id, clave, nombre_pais) values (2, 'JP', 'Japan');
insert into pais (pais_id, clave, nombre_pais) values (3, 'US', 'United States');
insert into pais (pais_id, clave, nombre_pais) values (4, 'PL', 'Poland');
insert into pais (pais_id, clave, nombre_pais) values (5, 'BR', 'Brazil');
insert into pais (pais_id, clave, nombre_pais) values (6, 'RU', 'Russia');
insert into pais (pais_id, clave, nombre_pais) values (7, 'SZ', 'Swaziland');
insert into pais (pais_id, clave, nombre_pais) values (8, 'PK', 'Pakistan');
insert into pais (pais_id, clave, nombre_pais) values (9, 'BR', 'Brazil');
insert into pais (pais_id, clave, nombre_pais) values (10, 'CN', 'China');
insert into pais (pais_id, clave, nombre_pais) values (11, 'PS', 'Palestinian Territory');
insert into pais (pais_id, clave, nombre_pais) values (12, 'RU', 'Russia');
insert into pais (pais_id, clave, nombre_pais) values (13, 'CN', 'China');
insert into pais (pais_id, clave, nombre_pais) values (14, 'CN', 'China');
insert into pais (pais_id, clave, nombre_pais) values (15, 'CO', 'Colombia');
insert into pais (pais_id, clave, nombre_pais) values (16, 'CN', 'China');
insert into pais (pais_id, clave, nombre_pais) values (17, 'JP', 'Japan');
insert into pais (pais_id, clave, nombre_pais) values (18, 'CZ', 'Czech Republic');
insert into pais (pais_id, clave, nombre_pais) values (19, 'ID', 'Indonesia');
insert into pais (pais_id, clave, nombre_pais) values (20, 'IR', 'Iran');
insert into pais (pais_id, clave, nombre_pais) values (21, 'CN', 'China');
insert into pais (pais_id, clave, nombre_pais) values (22, 'BR', 'Brazil');
insert into pais (pais_id, clave, nombre_pais) values (23, 'CN', 'China');
insert into pais (pais_id, clave, nombre_pais) values (24, 'RU', 'Russia');
insert into pais (pais_id, clave, nombre_pais) values (25, 'ID', 'Indonesia');
insert into pais (pais_id, clave, nombre_pais) values (26, 'BR', 'Brazil');
insert into pais (pais_id, clave, nombre_pais) values (27, 'PT', 'Portugal');
insert into pais (pais_id, clave, nombre_pais) values (28, 'YE', 'Yemen');
insert into pais (pais_id, clave, nombre_pais) values (29, 'FR', 'France');
insert into pais (pais_id, clave, nombre_pais) values (30, 'BR', 'Brazil');
insert into pais (pais_id, clave, nombre_pais) values (31, 'UA', 'Ukraine');
insert into pais (pais_id, clave, nombre_pais) values (32, 'US', 'United States');
insert into pais (pais_id, clave, nombre_pais) values (33, 'NO', 'Norway');
insert into pais (pais_id, clave, nombre_pais) values (34, 'LT', 'Lithuania');
insert into pais (pais_id, clave, nombre_pais) values (35, 'LU', 'Luxembourg');
insert into pais (pais_id, clave, nombre_pais) values (36, 'ID', 'Indonesia');
insert into pais (pais_id, clave, nombre_pais) values (37, 'BR', 'Brazil');
insert into pais (pais_id, clave, nombre_pais) values (38, 'ID', 'Indonesia');
insert into pais (pais_id, clave, nombre_pais) values (39, 'RU', 'Russia');
insert into pais (pais_id, clave, nombre_pais) values (40, 'SE', 'Sweden');
insert into pais (pais_id, clave, nombre_pais) values (41, 'JP', 'Japan');
insert into pais (pais_id, clave, nombre_pais) values (42, 'TH', 'Thailand');
insert into pais (pais_id, clave, nombre_pais) values (43, 'UA', 'Ukraine');
insert into pais (pais_id, clave, nombre_pais) values (44, 'RU', 'Russia');
insert into pais (pais_id, clave, nombre_pais) values (45, 'AR', 'Argentina');
insert into pais (pais_id, clave, nombre_pais) values (46, 'US', 'United States');
insert into pais (pais_id, clave, nombre_pais) values (47, 'PH', 'Philippines');
insert into pais (pais_id, clave, nombre_pais) values (48, 'CN', 'China');
insert into pais (pais_id, clave, nombre_pais) values (49, 'FI', 'Finland');
insert into pais (pais_id, clave, nombre_pais) values (50, 'AO', 'Angola');
insert into pais (pais_id, clave, nombre_pais) values (51, 'CN', 'China');
insert into pais (pais_id, clave, nombre_pais) values (52, 'CN', 'China');
insert into pais (pais_id, clave, nombre_pais) values (53, 'ZM', 'Zambia');
insert into pais (pais_id, clave, nombre_pais) values (54, 'PH', 'Philippines');
insert into pais (pais_id, clave, nombre_pais) values (55, 'GR', 'Greece');
insert into pais (pais_id, clave, nombre_pais) values (56, 'CM', 'Cameroon');
insert into pais (pais_id, clave, nombre_pais) values (57, 'US', 'United States');
insert into pais (pais_id, clave, nombre_pais) values (58, 'CO', 'Colombia');
insert into pais (pais_id, clave, nombre_pais) values (59, 'PH', 'Philippines');
insert into pais (pais_id, clave, nombre_pais) values (60, 'RS', 'Serbia');
insert into pais (pais_id, clave, nombre_pais) values (61, 'PH', 'Philippines');
insert into pais (pais_id, clave, nombre_pais) values (62, 'PE', 'Peru');
insert into pais (pais_id, clave, nombre_pais) values (63, 'BR', 'Brazil');
insert into pais (pais_id, clave, nombre_pais) values (64, 'GB', 'United Kingdom');
insert into pais (pais_id, clave, nombre_pais) values (65, 'ID', 'Indonesia');
insert into pais (pais_id, clave, nombre_pais) values (66, 'FR', 'France');
insert into pais (pais_id, clave, nombre_pais) values (67, 'CN', 'China');
insert into pais (pais_id, clave, nombre_pais) values (68, 'ID', 'Indonesia');
insert into pais (pais_id, clave, nombre_pais) values (69, 'CN', 'China');
insert into pais (pais_id, clave, nombre_pais) values (70, 'RU', 'Russia');
insert into pais (pais_id, clave, nombre_pais) values (71, 'FR', 'France');
insert into pais (pais_id, clave, nombre_pais) values (72, 'ID', 'Indonesia');
insert into pais (pais_id, clave, nombre_pais) values (73, 'CM', 'Cameroon');
insert into pais (pais_id, clave, nombre_pais) values (74, 'PH', 'Philippines');
insert into pais (pais_id, clave, nombre_pais) values (75, 'RU', 'Russia');
insert into pais (pais_id, clave, nombre_pais) values (76, 'SS', 'South Sudan');
insert into pais (pais_id, clave, nombre_pais) values (77, 'UA', 'Ukraine');
insert into pais (pais_id, clave, nombre_pais) values (78, 'RU', 'Russia');
insert into pais (pais_id, clave, nombre_pais) values (79, 'VN', 'Vietnam');
insert into pais (pais_id, clave, nombre_pais) values (80, 'ID', 'Indonesia');

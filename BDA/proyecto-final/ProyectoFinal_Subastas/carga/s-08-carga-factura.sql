--@Autor: FLores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro
--@Fecha Creacion:7/02/2021
--@Descripcion: Insercion a tabla factura
whenever sqlerror exit rollback
set serveroutput on 
connect admin_users/ausers

insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (1, 0, '806-82-0285', to_date('17/07/2020','DD/MM/YYYY'), '2555724.63', '9.49', 1);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (2, 1, '455-12-5280', to_date('19/07/2021','DD/MM/YYYY'), '2705674.17', '10.92', 3);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (3, 0, '279-72-1269', to_date('14/04/2020','DD/MM/YYYY'), '2221517.13', '9.65', 6);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (4, 1, '760-76-6233', to_date('19/05/2021','DD/MM/YYYY'), '1124237.05', '1.08', 8);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (5, 0, '718-99-4838', to_date('12/06/2021','DD/MM/YYYY'), '153940.64', '17.83', 11);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (6, 1, '700-48-1076', to_date('12/08/2021','DD/MM/YYYY'), '1292584.71', '16.24', 13);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (7, 0, '305-67-5140', to_date('27/09/2021','DD/MM/YYYY'), '400240.13', '13.32', 16);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (8, 1, '805-82-9499', to_date('07/08/2021','DD/MM/YYYY'), '77489.41', '4.63', 18);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (9, 0, '555-02-2429', to_date('27/10/2020','DD/MM/YYYY'), '105949.55', '10.81', 21);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (10, 1, '159-98-3346', to_date('29/11/2021','DD/MM/YYYY'), '964823.23', '3.33', 23);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (11, 0, '664-35-6344', to_date('15/07/2020','DD/MM/YYYY'), '1712884.50', '6.83', 26);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (12, 1, '733-08-4459', to_date('21/09/2020','DD/MM/YYYY'), '434093.08', '13.90', 28);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (13, 0, '585-13-9888', to_date('07/05/2021','DD/MM/YYYY'), '1539930.72', '7.91', 31);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (14, 1, '184-34-1138', to_date('04/11/2021','DD/MM/YYYY'), '2368325.25', '12.30', 33);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (15, 0, '433-36-0349', to_date('03/10/2020','DD/MM/YYYY'), '357514.85', '18.25', 36);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (16, 1, '458-33-9482', to_date('21/05/2021','DD/MM/YYYY'), '2906682.17', '13.98', 38);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (17, 0, '156-60-8007', to_date('26/12/2020','DD/MM/YYYY'), '188795.78', '12.03', 41);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (18, 1, '719-45-4566', to_date('01/06/2020','DD/MM/YYYY'), '1678958.84', '18.54', 43);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (19, 0, '110-30-9913', to_date('23/02/2021','DD/MM/YYYY'), '1800001.56', '6.97', 46);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (20, 1, '356-12-3919', to_date('25/11/2021','DD/MM/YYYY'), '118102.96', '16.90', 48);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (21, 0, '835-63-9105', to_date('29/07/2020','DD/MM/YYYY'), '1173519.28', '6.57', 51);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (22, 1, '838-94-1302', to_date('03/07/2020','DD/MM/YYYY'), '370333.68', '3.18', 53);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (23, 0, '769-54-2382', to_date('27/09/2020','DD/MM/YYYY'), '494038.84', '8.83', 56);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (24, 1, '190-53-6999', to_date('16/01/2021','DD/MM/YYYY'), '636642.68', '3.28', 58);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (25, 0, '866-11-2182', to_date('26/03/2020','DD/MM/YYYY'), '329733.32', '18.53', 61);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (26, 1, '872-63-5417', to_date('22/05/2021','DD/MM/YYYY'), '1596516.03', '11.10', 63);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (27, 0, '563-54-2847', to_date('07/06/2021','DD/MM/YYYY'), '1597192.91', '1.91', 66);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (28, 1, '506-97-3244', to_date('11/03/2020','DD/MM/YYYY'), '638164.68', '7.52', 68);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (29, 0, '581-53-8095', to_date('29/08/2021','DD/MM/YYYY'), '1454638.86', '15.15', 71);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (30, 1, '875-66-2173', to_date('02/03/2020','DD/MM/YYYY'), '2694462.85', '6.08', 73);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (31, 0, '734-32-5009', to_date('07/06/2021','DD/MM/YYYY'), '1838637.35', '18.72', 76);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (32, 1, '516-33-2535', to_date('07/06/2021','DD/MM/YYYY'), '1311433.04', '13.07', 78);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (33, 0, '733-57-6411', to_date('07/06/2021','DD/MM/YYYY'), '358807.81', '5.40', 81);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (34, 1, '196-45-0735', to_date('07/06/2021','DD/MM/YYYY'), '35494.80', '16.33', 83);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (35, 0, '583-93-6963', to_date('07/06/2021','DD/MM/YYYY'), '120032.36', '6.75', 86);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (36, 1, '652-20-5051', to_date('07/06/2021','DD/MM/YYYY'), '326447.83', '4.93', 88);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (37, 0, '464-23-0463', to_date('07/06/2021','DD/MM/YYYY'), '1493735.46', '9.65', 91);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (38, 1, '501-74-9025', to_date('07/06/2021','DD/MM/YYYY'), '2596703.71', '12.39', 93);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (39, 0, '301-37-1444', to_date('07/06/2021','DD/MM/YYYY'), '718388.71', '4.66', 96);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (40, 1, '283-54-1515', to_date('07/06/2021','DD/MM/YYYY'), '2922898.51', '10.39', 98);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (41, 0, '393-96-8780', to_date('07/06/2021','DD/MM/YYYY'), '1325759.15', '13.37', 101);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (42, 1, '522-36-1455', to_date('07/06/2021','DD/MM/YYYY'), '2199346.60', '9.38', 103);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (43, 0, '811-55-7871', to_date('07/06/2021','DD/MM/YYYY'), '1146089.91', '16.31', 106);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (44, 1, '302-79-1034', to_date('07/06/2021','DD/MM/YYYY'), '1201363.04', '3.13', 108);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (45, 0, '853-26-9015', to_date('07/06/2021','DD/MM/YYYY'), '2861345.17', '12.47', 111);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (46, 1, '420-99-0337', to_date('07/06/2021','DD/MM/YYYY'), '545839.36', '14.91', 113);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (47, 0, '797-78-9269', to_date('07/06/2021','DD/MM/YYYY'), '888844.47', '4.28', 116);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (48, 1, '886-44-9937', to_date('07/06/2021','DD/MM/YYYY'), '497937.90', '10.59', 118);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (49, 0, '489-79-6135', to_date('07/06/2021','DD/MM/YYYY'), '1165858.58', '9.94', 121);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (50, 1, '160-47-9331', to_date('07/06/2021','DD/MM/YYYY'), '1972426.43', '15.92', 123);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (51, 0, '229-42-4176', to_date('07/06/2021','DD/MM/YYYY'), '188245.36', '5.31', 126);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (52, 1, '508-99-4579', to_date('07/06/2021','DD/MM/YYYY'), '634599.21', '4.00', 128);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (53, 0, '756-35-3968', to_date('07/06/2021','DD/MM/YYYY'), '2296603.64', '18.39', 131);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (54, 1, '137-06-3288', to_date('07/06/2021','DD/MM/YYYY'), '114597.47', '14.80', 133);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (55, 0, '855-71-6082', to_date('07/06/2021','DD/MM/YYYY'), '1521842.70', '4.89', 136);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (56, 1, '249-03-9707', to_date('07/06/2021','DD/MM/YYYY'), '38579.25', '10.17', 138);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (57, 0, '247-93-1894', to_date('07/06/2021','DD/MM/YYYY'), '488149.02', '4.07', 141);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (58, 1, '714-28-2124', to_date('07/06/2021','DD/MM/YYYY'), '1181117.57', '18.25', 143);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (59, 0, '882-08-3768', to_date('07/06/2021','DD/MM/YYYY'), '1030400.83', '4.93', 146);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (60, 1, '862-08-9763', to_date('07/06/2021','DD/MM/YYYY'), '745043.48', '13.31', 148);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (61, 0, '335-01-0540', to_date('07/06/2021','DD/MM/YYYY'), '1290352.77', '2.88', 151);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (62, 1, '155-76-3133', to_date('18/06/2021','DD/MM/YYYY'), '2929567.81', '14.00', 153);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (63, 0, '474-57-3397', to_date('18/06/2021','DD/MM/YYYY'), '2577264.42', '5.21', 156);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (64, 1, '856-51-0357', to_date('18/06/2021','DD/MM/YYYY'), '237739.17', '18.78', 158);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (65, 0, '306-63-8321', to_date('18/06/2021','DD/MM/YYYY'), '2866824.60', '15.27', 161);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (66, 1, '580-32-3007', to_date('18/06/2021','DD/MM/YYYY'), '1748166.00', '1.30', 163);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (67, 0, '549-11-2649', to_date('18/06/2021','DD/MM/YYYY'), '2663047.44', '2.32', 166);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (68, 1, '454-17-3609', to_date('20/06/2021','DD/MM/YYYY'), '554428.83', '11.72', 168);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (69, 0, '588-71-6034', to_date('20/06/2021','DD/MM/YYYY'), '115062.81', '16.96', 171);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (70, 1, '507-37-3983', to_date('20/06/2021','DD/MM/YYYY'), '2439585.99', '2.45', 173);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (71, 0, '777-33-5079', to_date('20/06/2021','DD/MM/YYYY'), '1490417.04', '11.78', 176);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (72, 1, '291-86-9228', to_date('20/06/2021','DD/MM/YYYY'), '2476164.66', '5.85', 178);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (73, 0, '412-15-4580', to_date('20/06/2021','DD/MM/YYYY'), '1697969.90', '3.36', 181);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (74, 1, '220-54-6386', to_date('20/06/2021','DD/MM/YYYY'), '255545.40', '5.84', 183);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (75, 0, '109-11-3564', to_date('22/06/2021','DD/MM/YYYY'), '2254663.86', '15.43', 186);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (76, 1, '142-13-4925', to_date('22/06/2021','DD/MM/YYYY'), '1696308.75', '5.32', 188);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (77, 0, '331-53-1963', to_date('22/06/2021','DD/MM/YYYY'), '93849.36', '17.50', 191);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (78, 1, '565-27-3054', to_date('22/06/2021','DD/MM/YYYY'), '1709346.78', '11.17', 193);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (79, 0, '710-30-3175', to_date('22/06/2021','DD/MM/YYYY'), '2221169.84', '10.64', 196);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (80, 1, '865-71-6656', to_date('23/06/2021','DD/MM/YYYY'), '2477935.15', '19.22', 198);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (81, 0, '674-47-3350', to_date('23/06/2021','DD/MM/YYYY'), '705420.16', '16.99', 1);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (82, 1, '434-84-0625', to_date('23/06/2021','DD/MM/YYYY'), '812384.72', '13.34', 3);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (83, 0, '863-02-1914', to_date('23/06/2021','DD/MM/YYYY'), '1359700.39', '9.64', 6);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (84, 1, '363-96-8135', to_date('23/06/2021','DD/MM/YYYY'), '1531456.93', '1.90', 8);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (85, 0, '527-39-7657', to_date('23/06/2021','DD/MM/YYYY'), '189566.47', '18.55', 11);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (86, 1, '511-58-6493', to_date('24/06/2021','DD/MM/YYYY'), '595999.81', '16.73', 13);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (87, 0, '674-37-7616', to_date('24/06/2021','DD/MM/YYYY'), '266147.66', '12.39', 16);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (88, 1, '693-20-1500', to_date('24/06/2021','DD/MM/YYYY'), '2732734.24', '6.60', 18);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (89, 0, '540-54-4956', to_date('24/06/2021','DD/MM/YYYY'), '1256736.06', '11.75', 21);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (90, 1, '248-39-0258', to_date('24/06/2021','DD/MM/YYYY'), '909202.25', '4.67', 23);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (91, 0, '183-73-8081', to_date('24/06/2021','DD/MM/YYYY'), '1148397.73', '3.27', 26);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (92, 1, '626-71-8448', to_date('24/06/2021','DD/MM/YYYY'), '1398661.68', '8.74', 28);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (93, 0, '611-87-2194', to_date('24/06/2021','DD/MM/YYYY'), '2655065.76', '12.81', 31);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (94, 1, '137-09-5596', to_date('24/06/2021','DD/MM/YYYY'), '1314782.83', '15.77', 33);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (95, 0, '866-41-0836', to_date('24/06/2021','DD/MM/YYYY'), '435369.28', '18.42', 36);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (96, 1, '122-11-4603', to_date('24/06/2021','DD/MM/YYYY'), '596710.20', '0.58', 38);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (97, 0, '485-64-1598', to_date('24/06/2021','DD/MM/YYYY'), '2606275.36', '11.49', 41);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (98, 1, '707-28-1121', to_date('25/06/2021','DD/MM/YYYY'), '1292215.19', '1.50', 43);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (99, 0, '443-36-5270', to_date('25/06/2021','DD/MM/YYYY'), '484641.51', '2.49', 46);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (100, 1, '681-34-5177', to_date('25/06/2021','DD/MM/YYYY'), '2914883.96', '12.35', 48);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (101, 0, '229-98-0763', to_date('25/06/2021','DD/MM/YYYY'), '1404661.38', '6.29', 51);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (102, 1, '670-24-1603', to_date('25/06/2021','DD/MM/YYYY'), '1839983.44', '8.84', 53);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (103, 0, '414-82-7458', to_date('25/06/2021','DD/MM/YYYY'), '2224504.92', '0.40', 56);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (104, 1, '855-82-9849', to_date('25/06/2021','DD/MM/YYYY'), '867524.61', '14.88', 58);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (105, 0, '546-94-7353', to_date('25/06/2021','DD/MM/YYYY'), '2616104.95', '9.25', 61);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (106, 1, '590-61-8368', to_date('25/06/2021','DD/MM/YYYY'), '975897.86', '6.32', 63);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (107, 0, '198-85-0150', to_date('25/07/2021','DD/MM/YYYY'), '523871.82', '6.65', 66);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (108, 1, '421-91-7612', to_date('25/07/2021','DD/MM/YYYY'), '2777373.96', '5.79', 68);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (109, 0, '471-10-7990', to_date('25/07/2021','DD/MM/YYYY'), '1893110.42', '9.03', 71);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (110, 1, '654-98-9762', to_date('25/07/2021','DD/MM/YYYY'), '2365865.99', '5.81', 73);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (111, 0, '465-20-1783', to_date('25/07/2021','DD/MM/YYYY'), '571616.94', '17.04', 76);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (112, 1, '853-30-1542', to_date('25/07/2021','DD/MM/YYYY'), '1423289.28', '16.56', 78);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (113, 0, '517-05-1166', to_date('25/07/2021','DD/MM/YYYY'), '2727586.90', '12.26', 81);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (114, 1, '892-74-2137', to_date('25/08/2021','DD/MM/YYYY'), '134300.46', '11.12', 83);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (115, 0, '578-15-6636', to_date('25/08/2021','DD/MM/YYYY'), '1452525.53', '11.85', 86);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (116, 1, '352-25-8206', to_date('25/08/2021','DD/MM/YYYY'), '401754.93', '17.12', 88);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (117, 0, '508-54-2461', to_date('25/08/2021','DD/MM/YYYY'), '1510076.64', '8.62', 91);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (118, 1, '167-33-1583', to_date('25/08/2021','DD/MM/YYYY'), '2554168.94', '12.56', 93);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (119, 0, '213-92-9956', to_date('25/08/2021','DD/MM/YYYY'), '1018186.67', '19.02', 96);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (120, 1, '791-91-2842', to_date('25/08/2021','DD/MM/YYYY'), '350483.78', '7.86', 98);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (121, 0, '692-03-5267', to_date('25/08/2021','DD/MM/YYYY'), '1811794.23', '1.10', 101);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (122, 1, '669-55-8420', to_date('25/08/2021','DD/MM/YYYY'), '196016.98', '12.96', 103);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (123, 0, '404-53-9219', to_date('25/08/2021','DD/MM/YYYY'), '2902652.21', '19.37', 106);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (124, 1, '185-89-7945', to_date('25/09/2021','DD/MM/YYYY'), '2854900.16', '11.23', 108);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (125, 0, '594-28-6870', to_date('25/09/2021','DD/MM/YYYY'), '2206071.96', '19.27', 111);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (126, 1, '839-55-3699', to_date('25/09/2021','DD/MM/YYYY'), '777286.59', '6.28', 113);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (127, 0, '554-92-1037', to_date('25/09/2021','DD/MM/YYYY'), '489930.56', '13.14', 116);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (128, 1, '101-71-1428', to_date('25/09/2021','DD/MM/YYYY'), '712423.14', '17.88', 118);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (129, 0, '563-98-1764', to_date('25/09/2021','DD/MM/YYYY'), '2566650.81', '4.48', 121);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (130, 1, '192-61-1350', to_date('25/09/2021','DD/MM/YYYY'), '1964544.99', '13.65', 123);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (131, 0, '555-95-7327', to_date('25/09/2021','DD/MM/YYYY'), '528176.00', '11.11', 126);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (132, 1, '245-98-8607', to_date('25/09/2021','DD/MM/YYYY'), '1209568.92', '15.69', 128);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (133, 0, '735-03-5166', to_date('28/09/2021','DD/MM/YYYY'), '1667353.10', '13.95', 131);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (134, 1, '459-89-8155', to_date('28/09/2021','DD/MM/YYYY'), '1151961.36', '4.06', 133);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (135, 0, '101-71-1614', to_date('28/09/2021','DD/MM/YYYY'), '992026.24', '7.23', 136);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (136, 1, '434-71-5915', to_date('28/09/2021','DD/MM/YYYY'), '2981335.36', '7.72', 138);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (137, 0, '764-42-5697', to_date('28/09/2021','DD/MM/YYYY'), '711743.27', '15.39', 141);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (138, 1, '734-61-8263', to_date('28/09/2021','DD/MM/YYYY'), '483326.62', '3.78', 143);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (139, 0, '503-25-1067', to_date('28/09/2021','DD/MM/YYYY'), '133624.06', '8.61', 146);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (140, 1, '321-04-6475', to_date('28/09/2021','DD/MM/YYYY'), '1182530.44', '4.59', 148);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (141, 0, '657-90-6842', to_date('28/09/2021','DD/MM/YYYY'), '712290.77', '15.17', 151);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (142, 1, '834-62-2873', to_date('28/09/2021','DD/MM/YYYY'), '1895233.19', '8.17', 153);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (143, 0, '299-72-4571', to_date('28/09/2021','DD/MM/YYYY'), '1870868.82', '3.89', 156);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (144, 1, '878-55-3601', to_date('28/09/2021','DD/MM/YYYY'), '1070681.41', '17.51', 158);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (145, 0, '803-79-8078', to_date('28/09/2021','DD/MM/YYYY'), '887865.88', '9.46', 161);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (146, 1, '622-45-7689', to_date('28/09/2021','DD/MM/YYYY'), '629695.37', '0.99', 163);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (147, 0, '454-44-3397', to_date('28/09/2021','DD/MM/YYYY'), '1946193.56', '7.50', 166);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (148, 1, '340-64-9376', to_date('28/09/2021','DD/MM/YYYY'), '1931793.78', '3.92', 168);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (149, 0, '842-66-2923', to_date('28/09/2021','DD/MM/YYYY'), '2788886.54', '1.12', 171);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (150, 1, '360-12-5471',to_date('20/12/2021','DD/MM/YYYY'), '2566689.22', '15.37', 173);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (151, 0, '818-44-4034',to_date('20/04/2021','DD/MM/YYYY'), '964272.19', '13.04', 176);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (152, 1, '263-03-3895',to_date('20/04/2021','DD/MM/YYYY'), '2271993.32', '9.44', 178);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (153, 0, '576-49-2806',to_date('20/04/2021','DD/MM/YYYY'), '1726258.55', '7.98', 181);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (154, 1, '659-60-0990',to_date('20/04/2021','DD/MM/YYYY'), '82243.93', '0.92', 183);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (155, 0, '475-17-1521',to_date('20/05/2021','DD/MM/YYYY'), '1187201.84', '10.22', 186);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (156, 1, '791-31-3664',to_date('20/05/2021','DD/MM/YYYY'), '2394814.88', '12.55', 188);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (157, 0, '391-98-3679',to_date('20/06/2021','DD/MM/YYYY'), '2930967.89', '15.77', 191);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (158, 1, '119-40-1465',to_date('20/05/2021','DD/MM/YYYY'), '2883090.06', '9.55', 193);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (159, 0, '585-19-4149',to_date('20/06/2021','DD/MM/YYYY'), '2883477.54', '15.72', 196);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (160, 1, '258-74-0228',to_date('20/06/2021','DD/MM/YYYY'), '2048491.90', '4.49', 198);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (161, 0, '227-22-5628',to_date('20/07/2021','DD/MM/YYYY'), '1083222.88', '10.75', 1);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (162, 1, '137-92-1491',to_date('20/08/2021','DD/MM/YYYY'), '2453086.36', '17.90', 3);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (163, 0, '117-11-3321',to_date('20/06/2021','DD/MM/YYYY'), '779440.64', '6.67', 6);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (164, 1, '721-39-1714',to_date('20/07/2021','DD/MM/YYYY'), '1451044.92', '15.32', 8);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (165, 0, '153-68-9526',to_date('20/08/2021','DD/MM/YYYY'), '2211579.74', '3.43', 11);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (166, 1, '278-90-5855',to_date('20/06/2021','DD/MM/YYYY'), '2997595.05', '9.63', 13);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (167, 0, '437-38-8618',to_date('20/04/2021','DD/MM/YYYY'), '329096.79', '12.24', 16);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (168, 1, '808-91-8287',to_date('20/02/2021','DD/MM/YYYY'), '1712254.40', '6.09', 18);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (169, 0, '475-26-9038',to_date('20/01/2021','DD/MM/YYYY'), '1258741.79', '4.03', 21);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (170, 1, '105-71-4993',to_date('20/02/2021','DD/MM/YYYY'), '63821.68', '8.03', 23);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (171, 0, '201-51-8538',to_date('20/01/2021','DD/MM/YYYY'), '448785.06', '2.92', 26);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (172, 1, '310-13-9625',to_date('20/01/2021','DD/MM/YYYY'), '2082588.88', '11.91', 28);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (173, 0, '615-15-8293',to_date('20/05/2021','DD/MM/YYYY'), '1083908.61', '14.54', 31);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (174, 1, '856-77-6857',to_date('20/11/2021','DD/MM/YYYY'), '1880268.84', '13.70', 33);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (175, 0, '544-64-2435',to_date('20/11/2021','DD/MM/YYYY'), '2735586.21', '19.10', 36);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (176, 1, '554-88-6131',to_date('20/11/2021','DD/MM/YYYY'), '315404.60', '18.46', 38);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (177, 0, '327-87-0483',to_date('20/11/2021','DD/MM/YYYY'), '1149462.37', '1.42', 41);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (178, 1, '710-40-8469',to_date('20/11/2021','DD/MM/YYYY'), '2370720.65', '13.49', 43);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (179, 0, '641-37-5707',to_date('20/11/2021','DD/MM/YYYY'), '1168361.94', '12.87', 46);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (180, 1, '125-59-0281',to_date('20/11/2021','DD/MM/YYYY'), '369722.58', '18.38', 48);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (181, 0, '807-99-4366',to_date('20/11/2021','DD/MM/YYYY'), '1494072.10', '4.29', 51);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (182, 1, '256-26-5810',to_date('20/11/2021','DD/MM/YYYY'), '556012.00', '7.05', 53);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (183, 0, '161-30-5042',to_date('20/11/2021','DD/MM/YYYY'), '2457331.99', '16.48', 56);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (184, 1, '827-06-5140',to_date('20/11/2021','DD/MM/YYYY'), '1907716.91', '4.72', 58);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (185, 0, '260-21-9306',to_date('20/11/2021','DD/MM/YYYY'), '1109512.66', '12.61', 61);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (186, 1, '408-55-8100',to_date('20/11/2021','DD/MM/YYYY'), '1205659.05', '11.74', 63);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (187, 0, '573-26-1785',to_date('20/11/2021','DD/MM/YYYY'), '2557676.56', '17.23', 66);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (188, 1, '556-60-4593',to_date('20/11/2021','DD/MM/YYYY'), '1292053.66', '6.17', 68);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (189, 0, '503-67-2156',to_date('20/11/2021','DD/MM/YYYY'), '987729.77', '13.46', 71);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (190, 1, '804-53-2500',to_date('20/11/2021','DD/MM/YYYY'), '1540589.50', '10.43', 73);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (191, 0, '758-89-8937',to_date('20/11/2021','DD/MM/YYYY'), '815111.47', '7.41', 76);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (192, 1, '280-42-9446',to_date('20/12/2021','DD/MM/YYYY'), '722121.74', '18.72', 78);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (193, 0, '260-98-0349',to_date('20/12/2021','DD/MM/YYYY'), '1056098.88', '11.08', 81);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (194, 1, '737-83-5078',to_date('20/12/2021','DD/MM/YYYY'), '2826875.04', '9.79', 83);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (195, 0, '534-08-1127',to_date('20/12/2021','DD/MM/YYYY'), '2031406.67', '12.11', 86);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (196, 1, '301-78-6827',to_date('20/12/2021','DD/MM/YYYY'), '1643954.42', '8.23', 88);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (197, 0, '453-57-8335',to_date('20/12/2021','DD/MM/YYYY'), '1701837.20', '0.82', 91);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (198, 1, '298-86-5317',to_date('20/12/2021','DD/MM/YYYY'), '195919.93', '10.85', 93);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (199, 0, '339-56-2820',to_date('20/12/2021','DD/MM/YYYY'), '2387834.93', '2.86', 96);
insert into factura (factura_id, es_mayor_1, folio, fecha_generacion, monto_total, iva, usuario_id) values (200, 1, '688-60-1858',to_date('20/12/2021','DD/MM/YYYY'), '795222.87', '17.58', 98);

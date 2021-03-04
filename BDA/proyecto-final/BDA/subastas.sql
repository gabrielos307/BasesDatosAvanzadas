--
-- ER/Studio 8.0 SQL Code Generation
-- Company : BDA
-- Project : FLHEPROY    
--@Autor: Flores García Karina
--@Autor: Herrera Gandarela Gabriel Alejandro

--

-- 
-- TABLE: PAIS 
--.


whenever sqlerror exit rollback
set serveroutput on 
connect admin_users/ausers

CREATE TABLE admin_users.PAIS(
    PAIS_ID        NUMBER(2, 0)    NOT NULL,
    CLAVE          VARCHAR2(10)    NOT NULL,
    NOMBRE_PAIS    VARCHAR2(40)    NOT NULL,
    CONSTRAINT pais_pk PRIMARY KEY (PAIS_ID)
    using index(create unique index pais_pk on admin_users.pais(PAIS_ID)
    tablespace indexesTbs)
) tablespace usersTbs;


-- 
-- TABLE: USUARIO 
-- FALTA FOTO 

CREATE TABLE admin_users.USUARIO(
    USUARIO_ID          NUMBER(10, 0)    NOT NULL,
    USUARIO_AVAL_ID     NUMBER(10, 0),
    RFC                 VARCHAR2(40)     NOT NULL,
    ESTADO              VARCHAR2(40)     NOT NULL,
    NOMBRE_COMPRADOR    VARCHAR2(30)     NOT NULL,
    APELLIDO_PATERNO    VARCHAR2(40)     NOT NULL,
    APELLIDO_MATERNO    VARCHAR2(40)     NOT NULL,
    EMAIL               VARCHAR2(40)     NOT NULL,
    FOTO_PERFIL         BLOB             NOT NULL,
    TEXTO_RESENIA       VARCHAR2(90)     NOT NULL,
    USUARIO             VARCHAR2(20)     NOT NULL,
    PASSWORD            VARCHAR2(20)     NOT NULL,
    PAIS_ID             NUMBER(2, 0)     NOT NULL,
    CONSTRAINT usuario_pk PRIMARY KEY (USUARIO_ID)
    using index(create unique index usuario_pk on admin_users.USUARIO(USUARIO_ID)
    tablespace indexesTbs), 
    CONSTRAINT aval_fk FOREIGN KEY (USUARIO_AVAL_ID)
    REFERENCES admin_users.USUARIO(USUARIO_ID),
    CONSTRAINT pais_user_fk FOREIGN KEY (PAIS_ID)
    REFERENCES admin_users.PAIS(PAIS_ID),
    CONSTRAINT rfc_unique UNIQUE (RFC)
    using index(create unique index rfc_unique on admin_users.USUARIO(RFC)
    tablespace indexesTbs),
    CONSTRAINT email_unique UNIQUE (EMAIL)
    using index(create unique index email_unique on admin_users.USUARIO(EMAIL)
    tablespace indexesTbs)
) tablespace usersTbs
;



-- 
-- TABLE: STATUS 
--
connect admin_objects/aobjects
CREATE TABLE admin_objects.STATUS(
    STATUS_ID       NUMBER(10, 0)    NOT NULL,
    FECHA_STATUS    DATE             NOT NULL,
    STATUS          VARCHAR2(40)     NOT NULL,
    CONSTRAINT status_pk PRIMARY KEY (STATUS_ID)
    using index(create unique index status_pk on admin_objects.STATUS(STATUS_ID)
    tablespace indexesTbs)
) tablespace objectsTbs
;



-- 
-- TABLE: OBJETO 
--
connect admin_users/aobjects
CREATE TABLE admin_objects.OBJETO(
    OBJETO_ID             NUMBER(10, 0)    NOT NULL,
    PRECIO_FINAL          NUMBER(40, 0),
    COMISION              NUMBER(40, 0),
    TIPO_OBJETO           CHAR(1)          NOT NULL,
    NOMBRE_OBJETO         VARCHAR2(40)     NOT NULL,
    DESCRIPCION_OBJETO    VARCHAR2(80)     NOT NULL,
    PRECIO_INI            NUMBER(10, 2)    NOT NULL,
    CODIGO_BARRAS         RAW(20)          NOT NULL,
    STATUS_ID             NUMBER(10, 0)    NOT NULL,
    USUARIO_ID            NUMBER(10, 0)    NOT NULL,
    COMPRADOR_ID          NUMBER(10, 0),
    SUBASTADOR_ID         NUMBER(10, 0)    NOT NULL,
    CONSTRAINT objeto_pk PRIMARY KEY (OBJETO_ID)
    using index(create unique index objeto_pk on admin_objects.OBJETO(OBJETO_ID)
    tablespace indexesTbs), 
    CONSTRAINT subastador_objeto_fk FOREIGN KEY (SUBASTADOR_ID)
    REFERENCES admin_users.USUARIO(USUARIO_ID),
    CONSTRAINT comprador_objeto_fk FOREIGN KEY (COMPRADOR_ID)
    REFERENCES admin_users.USUARIO(USUARIO_ID),
    CONSTRAINT status_objeto_fk FOREIGN KEY (STATUS_ID)
    REFERENCES admin_objects.STATUS(STATUS_ID),
    CONSTRAINT usuario_objeto_fk FOREIGN KEY (USUARIO_ID)
    REFERENCES admin_users.USUARIO(USUARIO_ID),
    CONSTRAINT codigo_barras_unique UNIQUE (CODIGO_BARRAS)
    using index(create unique index codigo_barras_unique on admin_objects.OBJETO(OBJETO_ID)
    tablespace indexesTbs) 
) tablespace objectsTbs
;



-- 
-- TABLE: MARCA 
--

CREATE TABLE admin_objects.MARCA(
    MARCA_ID        NUMBER(40, 0)    NOT NULL,
    NOMBRE_MARCA    VARCHAR2(30)     NOT NULL,
    CONSTRAINT marca_pk PRIMARY KEY (MARCA_ID)
    using index(create unique index marca_pk on admin_objects.MARCA(MARCA_ID)
    tablespace indexesTbs)
) tablespace objectsTbs
;



-- 
-- TABLE: MODELO 
--

CREATE TABLE admin_objects.MODELO(
    MODELO_ID        NUMBER(10, 0)    NOT NULL,
    NOMBRE_MODELO    VARCHAR2(40)     NOT NULL,
    MARCA_ID         NUMBER(40, 0)    NOT NULL,
    CONSTRAINT modelo_pk PRIMARY KEY (MODELO_ID)
    using index(create unique index modelo_pk on admin_objects.MODELO(MODELO_ID)
    tablespace indexesTbs), 
    CONSTRAINT marca_modelo_fk FOREIGN KEY (MARCA_ID)
    REFERENCES admin_objects.MARCA(MARCA_ID)
) tablespace objectsTbs
;



-- 
-- TABLE: AUTO 
--

CREATE TABLE admin_objects.AUTO(
    OBJETO_ID           NUMBER(10, 0)    NOT NULL,
    ANIO                DATE             NOT NULL,
    NUMERO_CILINDROS    NUMBER(10, 0)    NOT NULL,
    NUMERO_SERIE        NUMBER(10, 0)    NOT NULL,
    MODELO_ID           NUMBER(10, 0)    NOT NULL,
    CONSTRAINT auto_pk PRIMARY KEY (OBJETO_ID)
    using index(create unique index auto_pk on admin_objects.AUTO(OBJETO_ID)
    tablespace indexesTbs), 
    CONSTRAINT objeto_auto_fk FOREIGN KEY (OBJETO_ID)
    REFERENCES OBJETO(OBJETO_ID),
    CONSTRAINT modelo_auto_fk FOREIGN KEY (MODELO_ID)
    REFERENCES MODELO(MODELO_ID),
    CONSTRAINT numero_serie_unique UNIQUE(NUMERO_SERIE)
    using index(create unique index numero_serie_unique on admin_objects.AUTO(NUMERO_SERIE)
    tablespace indexesTbs) 
) tablespace objectsTbs
;



-- 
-- TABLE: BANCO 
--

CREATE TABLE admin_objects.BANCO(
    BANCO_ID             NUMBER(10, 0)    NOT NULL,
    CLAVE_BANCO          VARCHAR2(20)     NOT NULL,
    DESCRIPCION_BANCO    VARCHAR2(40)     NOT NULL,
    NOMBRE_BANCO         VARCHAR2(40)     NOT NULL,
    CONSTRAINT banco_pk PRIMARY KEY (BANCO_ID)
    using index(create unique index banco_pk on admin_objects.BANCO(BANCO_ID)
    tablespace indexesTbs)
) tablespace objectsTbs
;



-- 
-- TABLE: CASA 
--

CREATE TABLE admin_objects.CASA(
    OBJETO_ID          NUMBER(10, 0)    NOT NULL,
    LATITUD            VARCHAR2(40)     NOT NULL,
    LONGITUD           VARCHAR2(80)     NOT NULL,
    DIRECCION_CASA     VARCHAR2(60)     NOT NULL,
    CARACTERISTICAS    VARCHAR2(120)         NOT NULL,
    CONSTRAINT casa_pk PRIMARY KEY (OBJETO_ID)
    using index(create unique index casa_pk on admin_objects.CASA(OBJETO_ID)
    tablespace indexesTbs), 
    CONSTRAINT objeto_casa_fk FOREIGN KEY (OBJETO_ID)
    REFERENCES OBJETO(OBJETO_ID)
) tablespace objectsTbs
;



-- 
-- TABLE: TARJETA 
--
connect admin_users/ausers
CREATE TABLE admin_users.TARJETA(
    TARJETA_ID         NUMBER(10, 0)    NOT NULL,
    NUMERO_TARJETA     NUMBER(16, 0)    NOT NULL,
    TIPO_TARJETA       VARCHAR2(20)     NOT NULL,
    MES_EXPIRACION     NUMBER(2, 0)     NOT NULL,
    ANIO_EXPIRACION    NUMBER(4, 0)     NOT NULL,
    CONSTRAINT tarjeta_pk PRIMARY KEY (TARJETA_ID)
    using index(create unique index tarjeta_pk on admin_users.TARJETA(TARJETA_ID)
    tablespace indexesTbs),
    CONSTRAINT numero_tarjeta_unique UNIQUE (NUMERO_TARJETA)
    using index(create unique index numero_tarjeta_unique on admin_users.TARJETA(NUMERO_TARJETA)
    tablespace indexesTbs)
) tablespace userE1
;



-- 
-- TABLE: CUENTA_BANCARIA 
--

CREATE TABLE admin_users.CUENTA_BANCARIA(
    REGISTRO_BANCARIO_ID    NUMBER(10, 0)    NOT NULL,
    CLABE                   NUMBER(10, 0)    NOT NULL,
    BANCO_ID                NUMBER(10, 0)    NOT NULL,
    USUARIO_ID              NUMBER(10, 0)    NOT NULL,
    TARJETA_ID              NUMBER(10, 0),
    CONSTRAINT cuenta_bancaria_pk PRIMARY KEY (REGISTRO_BANCARIO_ID)
    using index(create unique index cuenta_bancaria_pk on admin_users.CUENTA_BANCARIA(REGISTRO_BANCARIO_ID)
    tablespace indexesTbs), 
    CONSTRAINT tarjeta_cuenta_fk FOREIGN KEY (TARJETA_ID)
    REFERENCES admin_users.TARJETA(TARJETA_ID),
    CONSTRAINT banco_cuenta_bancaria FOREIGN KEY (BANCO_ID)
    REFERENCES admin_users.BANCO(BANCO_ID),
    CONSTRAINT usuario_cuenta_fk FOREIGN KEY (USUARIO_ID)
    REFERENCES admin_users.USUARIO(USUARIO_ID),
    CONSTRAINT clabe_unique UNIQUE (CLABE)
    using index(create unique index clabe_unique on admin_users.CUENTA_BANCARIA(REGISTRO_BANCARIO_ID)
    tablespace indexesTbs) 
) tablespace userE1
;



-- 
-- TABLE: FACTURA 
-- tablespace?

CREATE TABLE admin_users.FACTURA(
    FACTURA_ID          NUMBER(10, 0)    NOT NULL,
    ES_MAYOR_1          RAW(40)          NOT NULL,
    FOLIO               VARCHAR2(40)     NOT NULL,
    FECHA_GENERACION    TIMESTAMP(6)     NOT NULL,
    MONTO_TOTAL         NUMBER(10, 2)    NOT NULL,
    IVA                 NUMBER(3, 0)     NOT NULL,
    USUARIO_ID          NUMBER(10, 0)    NOT NULL,
    CONSTRAINT factura_pk PRIMARY KEY (FACTURA_ID)
    using index(create unique index factura_pk on admin_users.FACTURA(FACTURA_ID)
    tablespace indexesTbs), 
    CONSTRAINT usuario_factura_fk FOREIGN KEY (USUARIO_ID)
    REFERENCES admin_users.USUARIO(USUARIO_ID),
    CONSTRAINT folio_unique UNIQUE (FOLIO)
    using index(create unique index folio_unique on admin_users.FACTURA(FOLIO)
    tablespace indexesTbs) 
) tablespace ????
;



-- 
-- TABLE: FACTURA_OBJETO 
-- tablespace?

CREATE TABLE admin_users.FACTURA_OBJETO(
    FACTURA_OBJETO_ID    NUMBER(40, 0)    NOT NULL,
    FACTURA_ID           NUMBER(10, 0),
    OBJETO_ID            NUMBER(10, 0),
    CONSTRAINT factura_objeto_pk PRIMARY KEY (FACTURA_OBJETO_ID)
    using index(create unique index factura_objeto_pk on admin_users.FACTURA_OBJETO(FACTURA_OBJETO_ID)
    tablespace indexesTbs), 
    CONSTRAINT facturacion_objeto_fk FOREIGN KEY (FACTURA_ID)
    REFERENCES admin_users.FACTURA(FACTURA_ID),
    CONSTRAINT objeto_factura_fk FOREIGN KEY (OBJETO_ID)
    REFERENCES admin_objects.OBJETO(OBJETO_ID)
) tablespace ????
;



-- 
-- TABLE: FOTO_OBJETO 
-- tablespace?
connect admin_users/ausers
CREATE TABLE admin_objects.FOTO_OBJETO(
    FOTO_OBJETO_ID    NUMBER(20, 0)    NOT NULL,
    FOTO              BLOB             NOT NULL,
    OBJETO_ID         NUMBER(10, 0)    NOT NULL,
    CONSTRAINT foto_objeto_pk PRIMARY KEY (FOTO_OBJETO_ID)
    using index(create unique index foto_objeto_pk on admin_objects.FOTO_OBJETO(FOTO_OBJETO_ID)
    tablespace indexesTbs), 
    CONSTRAINT objeto_foto_objeto_fk FOREIGN KEY (OBJETO_ID)
    REFERENCES admin_objects.OBJETO(OBJETO_ID)
) tablespace ?????
;




-- 
-- TABLE: HACIENDA 
-- tablespace?

CREATE TABLE admin_objects.HACIENDA(
    OBJETO_ID             NUMBER(10, 0)    NOT NULL,
    NOMBRE_HACIENDA       VARCHAR2(40)     NOT NULL,
    EXTENSION_KM          NUMBER(10, 3)    NOT NULL,
    DIRECCION_HACIENDA    VARCHAR2(80)     NOT NULL,
    ACTIVIDADES           VARCHAR2(80)     NOT NULL,
    CONSTRAINT hacienda_pk PRIMARY KEY (OBJETO_ID)
    using index(create unique index hacienda_pk on admin_objects.HACIENDA(OBJETO_ID)
    tablespace indexesTbs), 
    CONSTRAINT objeto_hacienda_fk FOREIGN KEY (OBJETO_ID)
    REFERENCES admin_objects.OBJETO(OBJETO_ID)
) tablespace ??????
;



-- 
-- TABLE: HISTORICO_STATUS 
-- tablespace?

CREATE TABLE admin_objects.HISTORICO_STATUS(
    HISTORICO_STATUS_ID    NUMBER(40, 0)    NOT NULL,
    OBJETO_ID              NUMBER(10, 0)    NOT NULL,
    STATUS_ID              NUMBER(10, 0)    NOT NULL,
    FECHA                  DATE             NOT NULL,
    CONSTRAINT historico_status_pk PRIMARY KEY (HISTORICO_STATUS_ID)
    using index(create unique index historico_status_pk on admin_objects.HISTORICO_STATUS(HISTORICO_STATUS_ID)
    tablespace indexesTbs), 
    CONSTRAINT objeto_historico_status_fk FOREIGN KEY (OBJETO_ID)
    REFERENCES admin_objects.OBJETO(OBJETO_ID),
    CONSTRAINT status_historico_fk FOREIGN KEY (STATUS_ID)
    REFERENCES admin_objects.STATUS(STATUS_ID)
) tablespace ??????
;



-- 
-- TABLE: SUBASTA 
-- tablespace?

CREATE TABLE admin_objects.SUBASTA(
    SUBASTA_ID         VARCHAR2(40)     NOT NULL,
    DIRECCION_WEB      VARCHAR2(40)     NOT NULL,
    HORA               TIMESTAMP(6)     NOT NULL,
    FECHA              DATE             NOT NULL,
    CIFRA_ESPERADA     NUMBER(15, 2)    NOT NULL,
    TOTAL_RECAUDADO    NUMBER(15, 2),
    CONSTRAINT subasta_pk PRIMARY KEY (SUBASTA_ID)
    using index(create unique index subasta_pk on admin_objects.SUBASTA(SUBASTA_ID)
    tablespace indexesTbs)
) tablespace ?????
;



-- 
-- TABLE: SUBASTA_OBJETO 
-- tablespace?

CREATE TABLE admin_objects.SUBASTA_OBJETO(
    SUBASTA_OBJETO_ID    NUMBER(40, 0)    NOT NULL,
    OBJETO_ID            NUMBER(10, 0)    NOT NULL,
    SUBASTA_ID           VARCHAR2(40)     NOT NULL,
    CONSTRAINT subasta_objeto_pk PRIMARY KEY (SUBASTA_OBJETO_ID)
    using index(create unique index subasta_objeto_fk on admin_objects.SUBASTA_OBJETO(SUBASTA_OBJETO_ID)
    tablespace indexesTbs), 
    CONSTRAINT objeto_subasta_fk FOREIGN KEY (OBJETO_ID)
    REFERENCES admin_objects.OBJETO(OBJETO_ID),
    CONSTRAINT subasta_subasta_objeto_fk FOREIGN KEY (SUBASTA_ID)
    REFERENCES admin_objects.SUBASTA(SUBASTA_ID)
) tablespace ????
;



-- 
-- TABLE: OFERTA 
-- tablespace?

CREATE TABLE admin_users.OFERTA(
    OFERTA_ID           NUMBER(40, 0)    NOT NULL,
    FECHA_OFERTA         TIMESTAMP(6)     NOT NULL,
    OFERTA_ECONOMICA     NUMBER(10, 2)    NOT NULL,
    USUARIO_ID           NUMBER(10, 0)    NOT NULL,
    SUBASTA_OBJETO_ID    NUMBER(40, 0)    NOT NULL,
    CONSTRAINT oferta_pk PRIMARY KEY (OFERTAD_ID)
    using index(create unique index oferta_pk on admin_objects.OFERTA(OFERTA_ID)
    tablespace indexesTbs), 
    CONSTRAINT usuario_oferta_fk FOREIGN KEY (USUARIO_ID)
    REFERENCES admin_users.USUARIO(USUARIO_ID),
    CONSTRAINT subasta_objeto_oferta_fk FOREIGN KEY (SUBASTA_OBJETO_ID)
    REFERENCES admin_objects.SUBASTA_OBJETO(SUBASTA_OBJETO_ID)
) tablespace ?????
;



-- 
-- INDEX: Ref103 
--

CREATE INDEX Ref103 ON AUTO(OBJETO_ID)
;
-- 
-- INDEX: Ref724 
--

CREATE INDEX Ref724 ON AUTO(MODELO_ID)
;
-- 
-- INDEX: Ref105 
--

CREATE INDEX Ref105 ON CASA(OBJETO_ID)
;
-- 
-- INDEX: Ref1741 
--

CREATE INDEX Ref1741 ON CUENTA_BANCARIA(TARJETA_ID)
;
-- 
-- INDEX: Ref1530 
--

CREATE INDEX Ref1530 ON CUENTA_BANCARIA(BANCO_ID)
;
-- 
-- INDEX: Ref1132 
--

CREATE INDEX Ref1132 ON CUENTA_BANCARIA(USUARIO_ID)
;
-- 
-- INDEX: Ref1138 
--

CREATE INDEX Ref1138 ON FACTURA(USUARIO_ID)
;
-- 
-- INDEX: Ref1839 
--

CREATE INDEX Ref1839 ON FACTURA_OBJETO(FACTURA_ID)
;
-- 
-- INDEX: Ref1040 
--

CREATE INDEX Ref1040 ON FACTURA_OBJETO(OBJETO_ID)
;
-- 
-- INDEX: Ref1022 
--

CREATE INDEX Ref1022 ON FOTO_OBJETO(OBJETO_ID)
;
-- 
-- INDEX: Ref104 
--

CREATE INDEX Ref104 ON HACIENDA(OBJETO_ID)
;
-- 
-- INDEX: Ref107 
--

CREATE INDEX Ref107 ON HISTORICO_STATUS(OBJETO_ID)
;
-- 
-- INDEX: Ref29 
--

CREATE INDEX Ref29 ON HISTORICO_STATUS(STATUS_ID)
;
-- 
-- INDEX: Ref623 
--

CREATE INDEX Ref623 ON MODELO(MARCA_ID)
;
-- 
-- INDEX: Ref1142 
--

CREATE INDEX Ref1142 ON OBJETO(SUBASTADOR_ID)
;
-- 
-- INDEX: Ref1143 
--

CREATE INDEX Ref1143 ON OBJETO(COMPRADOR_ID)
;
-- 
-- INDEX: Ref26 
--

CREATE INDEX Ref26 ON OBJETO(STATUS_ID)
;
-- 
-- INDEX: Ref1135 
--

CREATE INDEX Ref1135 ON OBJETO(USUARIO_ID)
;
-- 
-- INDEX: Ref1126 
--

CREATE INDEX Ref1126 ON OFERTA(USUARIO_ID)
;
-- 
-- INDEX: Ref2037 
--

CREATE INDEX Ref2037 ON OFERTA(SUBASTA_OBJETO_ID)
;
-- 
-- INDEX: Ref1017 
--

CREATE INDEX Ref1017 ON SUBASTA_OBJETO(OBJETO_ID)
;
-- 
-- INDEX: Ref818 
--

CREATE INDEX Ref818 ON SUBASTA_OBJETO(SUBASTA_ID)
;
-- 
-- INDEX: Ref1144 
--

CREATE INDEX Ref1144 ON USUARIO(USUARIO_AVAL_ID)
;
-- 
-- INDEX: Ref1325 
--

CREATE INDEX Ref1325 ON USUARIO(PAIS_ID)
;




whenever sqlerror continue
CREATE TABLE RESTAURANTE(
	id_restaurante NUMBER PRIMARY KEY,
 	nombre_sucursal VARCHAR2(50) NOT NULL,
	capital REAL NOT NULL,
    logo_restaurante blob
);
/
create or replace NONEDITIONABLE type Periodo as object(
fecha_inicio date,
fecha_fin date,
STATIC FUNCTION validar_fecha1 ( fecha_inicio date, fecha_fin date ) RETURN date,
STATIC FUNCTION validar_fecha2 ( fecha_inicio date, fecha_fin date ) RETURN date
);
/
create or replace function validar_fecha1 ( fecha_inicio date, fecha_fin date ) RETURN date
is
begin
    IF (to_date(fecha_inicio) < to_date(fecha_fin))THEN
        return fecha_inicio;
    ELSE
        RAISE_APPLICATION_ERROR(-20001,'Fecha inicial invalida');
    END IF;
end;
/
create or replace function validar_fecha2 ( fecha_inicio date, fecha_fin date ) RETURN date
is
begin
    IF (to_date(fecha_fin) < to_date(fecha_inicio))THEN
        return fecha_fin;
    ELSE
        RAISE_APPLICATION_ERROR(-20001,'Fecha final invalida');
    END IF;
end;
/
create or replace NONEDITIONABLE TYPE Ubicacion as object(
Direccion varchar2(400),
latitud float,
longitud float,
static function verificar_latitud(latitud float) return float, 
static function verificar_longitud(latitud float) return float
);
/
create or replace function verificar_latitud(latitud float) return float
is
begin
    if latitud >80.0 or latitud<(-80.0) then
        raise_application_error(-20005,'Latitud invalida');
    else
        return latitud;
    end if;
end;
/
create or replace function verificar_longitud(longitud float) return float
is
begin
    if longitud>180.0 or longitud <-180.0 then
        raise_application_error(-20005,'Longitud invalida');
    else
        return longitud;
    end if;
end;
/
create or replace TYPE Datos_Basicos as object(
cedula number,
nombre varchar2(20),
apellido varchar2(20),
telefono number,
sexo varchar2(2),
static function verificar_telefono(telefono number) return number 
);
/
create or replace function verificar_telefono(telefono number) return number
is
begin
    if length(to_char(telefono))<11 then
        raise_application_error(-20005,'Telefono invalido');
    else
        return telefono;
    end if;
end;
/
create table sucursal(
id_sucursal number primary key,
id_restaurante number not null,
fecha_sucursal Periodo not null, 
ubicacion_sucursal ubicacion  not null,
hora_apertura INTERVAL DAY (0) TO SECOND (7) not null,
hora_cierre INTERVAL DAY (0) TO SECOND (7) not null,
FOREIGN KEY (id_restaurante) REFERENCES restaurante(id_restaurante)
);
/
CREATE TABLE EMPLEADO(
    id_empleado NUMBER PRIMARY KEY,
    id_sucursal NUMBER NOT NULL,
    foto_empleado Blob,
    datos_empleado Datos_basicos,
    fechas_empleado Periodo,
    FOREIGN KEY (id_sucursal) REFERENCES SUCURSAL(id_sucursal)
);
/
CREATE TABLE ROL(
    id_rol NUMBER PRIMARY KEY,
    nombre_rol VARCHAR2(50) NOT NULL,
    descripcion_funciones VARCHAR2(100) NOT NULL
);
/
CREATE TABLE EMPLEADO_ROL(
    id_rol NUMBER NOT NULL,
    id_empleado NUMBER NOT NULL,
    CONSTRAINT emprol_pk PRIMARY KEY (id_rol, id_empleado),
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol),
    FOREIGN KEY (id_empleado) REFERENCES EMPLEADO(id_empleado)
);
/
CREATE TABLE EGRESO(
    id_egreso NUMBER PRIMARY KEY,
    id_sucursal NUMBER NOT NULL,
    nombre_egreso VARCHAR2(50) NOT NULL,
    valor_egreso REAL NOT NULL,
    fecha_egreso DATE NOT NULL,
    FOREIGN KEY (id_sucursal) REFERENCES SUCURSAL(id_sucursal)
);
/
create table producto(
id_producto number primary key,
nombre_producto varchar2(50),
foto_producto blob,
fecha_vencimiento Periodo
);
/
CREATE TABLE INVENTARIO(
    id_inventario NUMBER PRIMARY KEY,
    id_sucursal NUMBER NOT NULL,
    id_producto NUMBER NOT NULL,
    fecha_inv DATE NOT NULL,
    cantidad NUMBER NOT NULL,
    FOREIGN KEY (id_sucursal) REFERENCES SUCURSAL(id_sucursal),
    FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto)
);
/
CREATE TABLE PROVEEDOR(
    id_proveedor NUMBER PRIMARY KEY,
    nombre_proveedor VARCHAR2(50),
    ubicacion_proveedor Ubicacion
);
/
CREATE TABLE PROVEEDOR_PEDIDO(
    id_proveedor_pedido NUMBER PRIMARY KEY,
    id_proveedor NUMBER NOT NULL,
    id_producto NUMBER NOT NULL,
    id_egreso NUMBER NOT NULL,
    nombre_proveedor VARCHAR2(50) NOT NULL,
    cantidad NUMBER NOT NULL,
    precio REAL NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES PROVEEDOR(id_proveedor),
    FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto),
    FOREIGN KEY (id_egreso) REFERENCES EGRESO(id_egreso)
);
/
create table menu(
id_menu number primary key,
tipo_menu varchar2(20),
id_sucursal number not null,
FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
);
/
create table sugerenciadeldia(
id_menu_dia number primary key,
id_sucursal number not null,
fecha_menu_dia Periodo,
FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
);
/
create table plato(
id_plato number primary key,
id_menu number not null,
nombre_plato varchar2(20),
descripcion_plato varchar(50),
foto_plato blob,
categoria varchar2(10),
precio_unitario float,
CHECK (categoria='comida' or categoria='bebida' or categoria='postre'),
FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);
/
create table sugerenciadeldiaplato( 
id_sugerenciadeldiaplato number primary key, 
id_plato number not null, 
id_menu_dia number not null, 
FOREIGN KEY(id_plato) REFERENCES plato(id_plato),  
FOREIGN KEY(id_menu_dia) REFERENCES sugerenciadeldia(id_menu_dia) 
);
/
create table promocion(
id_promocion number not null,
id_plato number not null,
nombre_promocion varchar2(20),
porcentaje_promocion number,
fecha_promo Periodo,
FOREIGN KEY (id_plato) REFERENCES plato(id_plato)
);
/
create table receta(
id_receta number primary key,
id_producto number not null,
id_plato number not null,
cantidad number,
FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
FOREIGN KEY (id_plato) REFERENCES plato(id_plato)
);
/
create table evento(
id_evento number primary key,
nombre_evento varchar2(100) not null,
fechas_eventos periodo not null,
id_sucursal number not null,
FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
);
/
create table cliente(
id_cliente number primary key,
datos_cliente datos_basicos
);
/
create table reserva(
id_reserva number primary key,
mesa number not null,
fechaReserva periodo not null,
cliente_id number not null,
sucursal_id number not null,
constraint fk_cliente_reserva foreign key (cliente_id) references cliente(id_cliente),
constraint fk_sucursal_reserva foreign key (sucursal_id) references sucursal(id_sucursal)
);
/
create table pedido(
num_pedido number primary key,
tipo_entrega varchar2(30) not null,
constraint check_tipo check (tipo_entrega in ('Delivery','En el local','Pick-up')),
direccion_entrega varchar2(100),
cliente_id number not null,
constraint fk_cliente foreign key (cliente_id) references cliente(id_cliente)
);
/
create table factura(
numero_factura number primary key,
fecha date not null,
sub_total float not null);
/
create table FormaPago(
id_forma_pago number primary key,
nombre varchar2(100) not null,
factura_id number not null,
constraint fk_factura foreign key (factura_id) references factura(numero_factura)
);
/
create table Pedidoplato(
id_pedido number primary key,
calificacion number not null,
comentario varchar(300),
pedido_id number not null,
plato_id number not null,
factura_id number not null,
constraint calificacion_valida check (calificacion between 0 and 10),
constraint fk_factura_pedido foreign key (factura_id) references factura(numero_factura),
constraint fk_pedido foreign key (pedido_id) references pedido(num_pedido),
constraint fk_plato foreign key (plato_id) references plato(id_plato)
);

alter table sucursal add mapa blob not null;
alter table sucursal add nombre varchar2(200);

alter table empleado add motivo_egreso varchar2(50);

ALTER TYPE Datos_Basicos ADD ATTRIBUTE fecha_nacimiento date CASCADE;

alter table plato drop column id_menu;

alter table pedido add reserva_id number;
alter table pedido add constraint fk_reserva FOREIGN KEY (reserva_id) REFERENCES reserva(id_reserva);

CREATE TABLE PLATO_MENU(
    id_plato NUMBER NOT NULL,
    id_menu NUMBER NOT NULL,
    CONSTRAINT platomenu_pk PRIMARY KEY (id_plato, id_menu),
    FOREIGN KEY (id_plato) REFERENCES plato(id_plato),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);

ALTER TABLE promocion 
MODIFY nombre_promocion VARCHAR2( 100 ) NOT NULL;

alter table pedido add fecha date

ALTER TABLE formapago 
ADD monto_pagado number NOT NULL;

ALTER TABLE formapago
ADD CONSTRAINT check_nombre
  CHECK (nombre IN ('Efectivo', 'POS', 'Zelle', 'Pipol Pay', 'PayPal', 'Zinli', 'Criptomonedas'));
 
 /*TABLA PARA PROBAR LOS USUARIOS*/
CREATE TABLE PRUEBA(
	id_prueba NUMBER PRIMARY KEY,
 	nombre VARCHAR2(50) NOT NULL,
	edad NUMBER NOT NULL
);

ALTER TABLE evento
add hora_inicio INTERVAL DAY (0) TO SECOND (7);

ALTER TABLE evento
add hora_fin INTERVAL DAY (0) TO SECOND (7);

ALTER TABLE evento
add Grupo_Musical varchar2 (100);

ALTER TABLE EVENTO
modify Condiciones_Evento varchar2 (500);

ALTER TABLE reserva
  add cantidad_personas number;
 ALTER TABLE reserva
  add abono_inicial number;

/*

select * from cliente
select * from sugerenciadeldiaplato
select * from sucursal;
select * from plato;



declare 
    cursor c1 is select TNAME FROM TAB;
    SSQL VARCHAR(500);
BEGIN
    FOR I IN C1
        LOOP
            SSQL:= 'DROP TABLE '||I.TNAME||' CASCADE CONSTRAINTS PURGE';
            DBMS_OUTPUT.PUT_LINE(SSQL);
            EXECUTE IMMEDIATE(SSQL);
        END LOOP;
END;

*/













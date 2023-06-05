------------------------------------------------------------------------
--INSERTS DE RESTAURANTE:
-----------------------------------------------------------------------
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into restaurante values(1,'Bako',500000,EMPTY_BLOB()) Returning logo_restaurante into V_TEMP;
    V_NOMBRE_FOTO:='BAKOLOGO.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;



------------------------------------------------------------------------
--INSERTS DE SUCURSAL:
-----------------------------------------------------------------------
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(1,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('altamira, Al lado del McDonals',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Altamira') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBIALTAMIRA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(2,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('Chacao, Al lado del Multicentro Empresarial del Este',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Chacao') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBICHACAO.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;

declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(3,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('La urbina, Avenida Principal de la Urbina',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'La Urbina') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBILAURBINA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(4,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('El Hatillo, Avenida El Pauji',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'El Hatillo') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBIHATILLO.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(5,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('Montalban, Al lado de la Iglesia Nuestra Señora de la Paz',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Montalban') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBIMONTALBAN.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(6,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('Manzanares, Calle Los Mangos',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Manzanares') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBIMANZANARES.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(7,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('Manzanares, Calle Los Mangos',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Los teques') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBILOSTEQUES.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(8,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('La Guaira, Dentro del Centro Comercial El Cardonal 2020',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'La Guaira') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBILAGUAIRA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(9,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('Maracay, Avenida Bolivar',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Maracay') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBIMARACAY.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(10,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('Valencia, Calle Borburata',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Valencia') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBIVALENCIA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(11,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('Por La Mar, Calle Raul Leoni',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Por La Mar') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBIPORLAMAR.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(12,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('Merida, Viad. Sucre',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Merida') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBIMERIDA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(13,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('Zulia, Avenida El Milagro',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Zulia') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBIZULIA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(14,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('Apure, Avenida Caracas',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Apure') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBIAPURE.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into sucursal values(15,1,periodo(validar_fecha1(systimestamp,systimestamp+1),null), ubicacion('Barinas, Avenida Adonay Parra',verificar_latitud(70),verificar_longitud(100)),interval'09:00:00.00' HOUR TO SECOND(7),interval'15:00:00.00' HOUR TO SECOND(7),EMPTY_BLOB(),'Barinas') Returning mapa into V_TEMP;
    V_NOMBRE_FOTO:='UBIBARINAS.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
---------------------------------------------------------------------------------------------
--INSERTS DE PLATO

declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(1, 'Barquilla de fresa', 'Cremosa y deliciosa barquilla sabor fresa', EMPTY_BLOB(), 'postre', 5) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='BARQUILLAFRESA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(2, 'Carne Beef Rib', 'Jugoso Bistec 5 estrellas beef rib', EMPTY_BLOB(), 'comida', 20) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='CARNEBEEFRIB.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(3, 'Carne Rib Eye', 'Increible filete extraido del mejor ganado', EMPTY_BLOB(), 'comida', 22) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='CARNERIBEYE.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(4, 'Carne T Bone', 'Espectacular filete sazonado a la parrilla', EMPTY_BLOB(), 'comida', 25) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='CARNETBONE.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(5, 'Costillas de res', 'Increibles costillas que se derriten en tu boca', EMPTY_BLOB(), 'comida', 18) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='COSTILLASDERES.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(6, 'Pasta Carbonara', 'Pasta  con salsa al estilo de la casa', EMPTY_BLOB(), 'comida', 15) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='PASTACARBONARA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(7, 'Pasta Marinera', 'Pasta con genuino sabor a mar', EMPTY_BLOB(), 'comida', 13) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='PASTAMARINERA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(8, 'Pasta Napolitana', 'Pasta con autentico sabor italiano', EMPTY_BLOB(), 'comida', 16) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='PASTANAPOLITANA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(9, 'Pasta Pesto', 'Pasta con los mejores condimentos y especias', EMPTY_BLOB(), 'comida', 12) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='PASTAPESTO.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(10, 'Pizza Bako', 'Pizza tradicional de la casa', EMPTY_BLOB(), 'comida', 10) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='PIZZABAKO.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(11, 'Pizza Hawaiana', 'Pizza para los más atrevidos', EMPTY_BLOB(), 'comida', 8) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='PIZZAHAWIANA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(12, 'Pizza Margarita', 'The Goat, The MVP', EMPTY_BLOB(), 'comida', 13) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='PIZZAMARGARITA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(13, 'Pizza Pepperoni', 'Preparada con el mejor pepperoni del pais', EMPTY_BLOB(), 'comida', 11) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='PIZZAPEPPERONI.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(14, 'Smoothie de fresa', 'Dulce y saludable batido de fresa', EMPTY_BLOB(), 'bebida', 7) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='SMOOTHIEFRESA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
/
declare
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
    insert into plato values(15, 'Coca Cola', 'Refrescante Coca Cola', EMPTY_BLOB(), 'bebida', 3) Returning foto_plato into V_TEMP;
    V_NOMBRE_FOTO:='VASOCOCACOLA.png';
    
    V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);
    COMMIT;
END;
-----------------------------------------------------------------------------------------------------
--INSERTS DE MENU
insert into menu values(1,'Principal', 1); 
insert into menu values(2,'Principal', 2);
insert into menu values(3,'Principal', 3);
insert into menu values(4,'Principal', 4);
insert into menu values(5,'Principal', 5);
insert into menu values(6,'Principal', 6);
insert into menu values(7,'Principal', 7);
insert into menu values(8,'Principal', 8);
insert into menu values(9,'Principal', 9);
insert into menu values(10,'Principal', 10);
insert into menu values(11,'Principal', 11);
insert into menu values(12,'Principal', 12);
insert into menu values(13,'Principal', 13);
insert into menu values(14,'Principal', 14);
insert into menu values(15,'Principal', 15);
--------------------------------------------------------------------------------------------------------
--INSERTS DE PLATO_MENU
INSERT ALL
INTO plato_menu values(1,1)
INTO plato_menu values(2,1)
INTO plato_menu values(3,1)
INTO plato_menu values(4,1)
INTO plato_menu values(5,1)
INTO plato_menu values(15,1)
INTO plato_menu values(1,2)
INTO plato_menu values(15,2)
INTO plato_menu values(6,2)
INTO plato_menu values(7,2)
INTO plato_menu values(8,2)
INTO plato_menu values(9,2)
INTO plato_menu values(10,2)
INTO plato_menu values(1,3)
INTO plato_menu values(15,3)
INTO plato_menu values(11,3)
INTO plato_menu values(12,3)
INTO plato_menu values(13,3)
INTO plato_menu values(14,3)
INTO plato_menu values(2,3)
INTO plato_menu values(1,4)
INTO plato_menu values(15,4)
INTO plato_menu values(3,4)
INTO plato_menu values(4,4)
INTO plato_menu values(5,4)
INTO plato_menu values(6,4)
INTO plato_menu values(7,4)
INTO plato_menu values(1,5)
INTO plato_menu values(15,5)
INTO plato_menu values(8,5)
INTO plato_menu values(9,5)
INTO plato_menu values(10,5)
INTO plato_menu values(11,5)
INTO plato_menu values(12,5)
INTO plato_menu values(1,6)
INTO plato_menu values(15,6)
INTO plato_menu values(13,6)
INTO plato_menu values(14,6)
INTO plato_menu values(2,6)
INTO plato_menu values(3,6)
INTO plato_menu values(4,6)
INTO plato_menu values(1,7)
INTO plato_menu values(15,7)
INTO plato_menu values(5,7)
INTO plato_menu values(6,7)
INTO plato_menu values(7,7)
INTO plato_menu values(8,7)
INTO plato_menu values(9,7)
INTO plato_menu values(1,8)
INTO plato_menu values(15,8)
INTO plato_menu values(10,8)
INTO plato_menu values(11,8)
INTO plato_menu values(12,8)
INTO plato_menu values(13,8)
INTO plato_menu values(14,8)
INTO plato_menu values(1,9)
INTO plato_menu values(15,9)
INTO plato_menu values(2,9)
INTO plato_menu values(3,9)
INTO plato_menu values(4,9)
INTO plato_menu values(5,9)
INTO plato_menu values(6,9)
INTO plato_menu values(1,10)
INTO plato_menu values(15,10)
INTO plato_menu values(7,10)
INTO plato_menu values(8,10)
INTO plato_menu values(9,10)
INTO plato_menu values(10,10)
INTO plato_menu values(11,10)
INTO plato_menu values(1,11)
INTO plato_menu values(15,11)
INTO plato_menu values(13,11)
INTO plato_menu values(14,11)
INTO plato_menu values(2,11)
INTO plato_menu values(3,11)
INTO plato_menu values(4,11)
INTO plato_menu values(1,12)
INTO plato_menu values(15,12)
INTO plato_menu values(5,12)
INTO plato_menu values(6,12)
INTO plato_menu values(7,12)
INTO plato_menu values(8,12)
INTO plato_menu values(9,12)
INTO plato_menu values(1,13)
INTO plato_menu values(15,13)
INTO plato_menu values(10,13)
INTO plato_menu values(11,13)
INTO plato_menu values(12,13)
INTO plato_menu values(13,13)
INTO plato_menu values(14,13)
INTO plato_menu values(1,14)
INTO plato_menu values(15,14)
INTO plato_menu values(2,14)
INTO plato_menu values(3,14)
INTO plato_menu values(4,14)
INTO plato_menu values(5,14)
INTO plato_menu values(6,14)
INTO plato_menu values(1,15)
INTO plato_menu values(15,15)
INTO plato_menu values(7,15)
INTO plato_menu values(8,15)
INTO plato_menu values(9,15)
INTO plato_menu values(10,15)
INTO plato_menu values(11,15)
SELECT 1 FROM dual;
-----------------------------------------------------------
--INSERTS DE PROMOCION, ME FALTAN MAS

insert all
into promocion (id_promocion, id_plato, nombre_promocion, porcentaje_promocion, fecha_promo) values (1, 1, '20% off', 20, Periodo( to_date('25-11-2022'), to_date('31-12-2022') ))
into promocion (id_promocion, id_plato, nombre_promocion, porcentaje_promocion, fecha_promo) values (2, 2, '30% off', 30, Periodo( to_date('1-12-2022'), to_date('31-12-2022') ))
into promocion (id_promocion, id_plato, nombre_promocion, porcentaje_promocion, fecha_promo) values (3, 3, '25% off', 25, Periodo( to_date('01-01-2023'), to_date('31-01-2023') ))
into promocion (id_promocion, id_plato, nombre_promocion, porcentaje_promocion, fecha_promo) values (4, 4, '35% off', 35, Periodo( to_date('01-03-2023'), to_date('31-03-2023') ))
into promocion (id_promocion, id_plato, nombre_promocion, porcentaje_promocion, fecha_promo) values (5, 5, '10% off', 10, Periodo( to_date('05-03-2023'), to_date('31-03-2023') ))
select 1 from dual;

-----------------------------------------------------------
--INSERTS DE Clientes

insert into cliente values(1,datos_basicos(2000001,'Martín','Ponceleon',verificar_telefono(42400009001),'F',to_date('01-12-1995')));
insert into cliente values(2,datos_basicos(2000002,'Lucas','Sojo',verificar_telefono(42400009002),'M',to_date('11-10-1998')));
insert into cliente values(3,datos_basicos(2000003,'Josefina','Soto',verificar_telefono(42400009003),'F',to_date('01-06-1992')));
insert into cliente values(4,datos_basicos(2000004,'Leo','Morantes',verificar_telefono(42400009004),'F',to_date('02-11-1995')));
insert into cliente values(5,datos_basicos(2000005,'Daniel','Lopez',verificar_telefono(42400009005),'M',to_date('11-12-1980')));
insert into cliente values(6,datos_basicos(2000006,'Alejandro','Ruiz',verificar_telefono(42400009006),'M',to_date('04-05-1995')));
insert into cliente values(7,datos_basicos(2000007,'Luis','Mendez',verificar_telefono(42400009007),'F',to_date('01-12-1997')));
insert into cliente values(8,datos_basicos(2000008,'Pau','Rodriguez',verificar_telefono(42400009008),'F',to_date('03-12-1999')));
insert into cliente values(9,datos_basicos(2000009,'Unai','Sojo',verificar_telefono(42400009009),'M',to_date('05-12-1975')));
insert into cliente values(10,datos_basicos(2000010,'Rafael','Suarez',verificar_telefono(42400009010),'F',to_date('02-12-1965')));
insert into cliente values(11,datos_basicos(2000011,'Joel','Perez',verificar_telefono(42400009011),'M',to_date('01-12-1995')));
insert into cliente values(12,datos_basicos(2000012,'Alberto','Gonzalez',verificar_telefono(42400009012),'F',to_date('01-07-1985')));
insert into cliente values(13,datos_basicos(2000013,'Pedro','Morantes',verificar_telefono(42400009013),'M',to_date('01-09-1975')));
insert into cliente values(14,datos_basicos(2000014,'Raúl','Andrade',verificar_telefono(42400009014),'M',to_date('01-11-1999')));
insert into cliente values(15,datos_basicos(2000015,'Aitor','Redondo',verificar_telefono(42400009015),'M',to_date('01-08-2000')));


-----------------------------------------------------------
--INSERTS DE PEDIDO

insert into pedido values (1,'En el local','',1,to_date('01-08-2022'),1);
insert into pedido values (2,'En el local','',2,to_date('02-08-2022'),2);
insert into pedido values (3,'En el local','',3,to_date('03-08-2022'),3);
insert into pedido values (4,'En el local','',4,to_date('03-08-2022'),4);
insert into pedido values (5,'En el local','',5,to_date('05-08-2022'),5);
insert into pedido values (6,'Delivery','Calle Paris, Las Mercedes',6,to_date('11-08-2022'),6);
insert into pedido values (7,'Delivery','Av La Colina, Las Acasias',7,to_date('12-08-2022'),7);
insert into pedido values (8,'Delivery','Av Intercomunal, El Valle',8,to_date('15-08-2022'),8);
insert into pedido values (9,'Delivery','Av La Victoria',9,to_date('16-08-2022'),9);
insert into pedido values (10,'Delivery','Av Libertadpr, Chacao',10,to_date('17-08-2022'),10);
insert into pedido values (11,'Pick-up','Plaza Vzla',11,to_date('18-08-2022'),11);
insert into pedido values (12,'Pick-up','Petare',12,to_date('19-08-2022'),12);
insert into pedido values (13,'Pick-up','Chacaito',13,to_date('20-08-2022'),13);
insert into pedido values (14,'Pick-up','Altamira',14,to_date('21-08-2022'),14);
insert into pedido values (15,'Pick-up','La vega',15,to_date('23-08-2022'),15);

truncate table pedidoplato;

truncate table pedido;

select * from pedido
-----------------------------------------------------------
--INSERTS DE FACTURA

insert into factura values(1,to_date('01-08-2022'),5);
insert into factura values(2,to_date('02-08-2022'),5);
insert into factura values(3,to_date('03-08-2022'),15);
insert into factura values(4,to_date('03-08-2022'),25);
insert into factura values(5,to_date('05-08-2022'),12);
insert into factura values(6,to_date('11-08-2022'),12);
insert into factura values(7,to_date('12-08-2022'),12);
insert into factura values(8,to_date('15-08-2022'),16);
insert into factura values(9,to_date('16-08-2022'),3);
insert into factura values(10,to_date('17-08-2022'),7);
insert into factura values(11,to_date('18-08-2022'),7);
insert into factura values(12,to_date('19-08-2022'),10);
insert into factura values(13,to_date('20-08-2022'),8);
insert into factura values(14,to_date('21-08-2022'),11);
insert into factura values(15,to_date('23-08-2022'),8);


-----------------------------------------------------------
--INSERTS DE PEDIDIPLATO


insert into pedidoplato values(1,8,'Me gusto, muy bueno',1,1,1);
insert into pedidoplato values(2,7,'Me gusto, bueno',2,1,2);
insert into pedidoplato values(3,5,'Ni bien ni mal',3,6,3);
insert into pedidoplato values(4,2,'No me gusto, sabia quemado',4,4,4);
insert into pedidoplato values(5,9,'Excelente',5,9,5);
insert into pedidoplato values(6,9,'Excelente',6,9,6);
insert into pedidoplato values(7,8,'Buenisima',7,9,7);
insert into pedidoplato values(8,7,'Buena',8,8,8);
insert into pedidoplato values(9,5,'Sin Comentario',9,15,9);
insert into pedidoplato values(10,8,'Sabroso',10,14,10);
insert into pedidoplato values(11,8,'Sabroso',11,14,11);
insert into pedidoplato values(12,6,'No estaba tan mal',12,10,12);
insert into pedidoplato values(13,4,'Super mal',13,11,13);
insert into pedidoplato values(14,8,'Muy buena',14,13,14);
insert into pedidoplato values(15,8,'100% Recomendada',15,11,15);

-----------------------------------------------------------
--INSERTS DE RESERVA


insert into reserva values(1,2,periodo(to_date('10-10-2022'),null),1,1);
insert into reserva values(2,1,periodo(to_date('11-11-2022'),null),2,2);
insert into reserva values(3,2,periodo(to_date('10-12-2022'),null),3,1);
insert into reserva values(4,3,periodo(to_date('15-10-2022'),null),1,1);
insert into reserva values(5,4,periodo(to_date('11-10-2022'),null),2,2);
insert into reserva values(6,2,periodo(to_date('19-11-2022'),null),4,3);
insert into reserva values(7,1,periodo(to_date('18-10-2022'),null),5,3);
insert into reserva values(8,2,periodo(to_date('11-08-2022'),null),6,4);
insert into reserva values(9,2,periodo(to_date('12-08-2022'),null),7,5);
insert into reserva values(10,2,periodo(to_date('15-08-2022'),null),8,6);
insert into reserva values(11,2,periodo(to_date('16-08-2022'),null),9,7);
insert into reserva values(12,2,periodo(to_date('17-08-2022'),null),10,8);
insert into reserva values(13,3,periodo(to_date('18-08-2022'),null),11,9);
insert into reserva values(14,4,periodo(to_date('19-08-2022'),null),12,10);
insert into reserva values(15,1,periodo(to_date('20-08-2022'),null),13,11);
insert into reserva values(16,1,periodo(to_date('21-08-2022'),null),14,12);
insert into reserva values(17,1,periodo(to_date('23-08-2022'),null),15,13);
insert into reserva values(18,1,periodo(to_date('23-08-2022'),null),15,14);
insert into reserva values(19,1,periodo(to_date('23-08-2022'),null),15,15);

 insert into reserva values(20,2,periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),1,1);


update reserva set fechareserva=periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=1;

update reserva set fechareserva=periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=2;
update reserva set fechareserva=periodo(TO_DATE('2022-10-11 10:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=3;
update reserva set fechareserva=periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=4;
update reserva set fechareserva=periodo(TO_DATE('2022-10-12 11:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=5;
update reserva set fechareserva=periodo(TO_DATE('2022-10-13 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=6;
update reserva set fechareserva=periodo(TO_DATE('2022-10-14 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=7;
update reserva set fechareserva=periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=8;
update reserva set fechareserva=periodo(TO_DATE('2022-10-15 11:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=9;
update reserva set fechareserva=periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=10;
update reserva set fechareserva=periodo(TO_DATE('2022-10-16 11:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=11;
update reserva set fechareserva=periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=12;
update reserva set fechareserva=periodo(TO_DATE('2022-10-14 10:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=13;
update reserva set fechareserva=periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=14;
update reserva set fechareserva=periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=15;
update reserva set fechareserva=periodo(TO_DATE('2022-10-10 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=16;
update reserva set fechareserva=periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=17;
update reserva set fechareserva=periodo(TO_DATE('2022-10-10 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=18;
update reserva set fechareserva=periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null) where id_reserva=19;



select * from reserva;
insert into sugerenciadeldia values(16,1,periodo(null,null));
insert into sugerenciadeldiaplato values(16,15,3);

select id_menu_dia, id_sucursal, s.fecha_menu_dia.fecha_inicio,s.fecha_menu_dia.fecha_fin  from sugerenciadeldia s;
select * from sugerenciadeldiaplato;
select id_reserva, mesa, r.fechareserva.fecha_inicio,r.fechareserva.fecha_fin, cliente_id, sucursal_id from reserva r 


-----------------------------------------------------------
--INSERTS DE EMPLEADO


SELECT * FROM EMPLEADO;

declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(1, 1, EMPTY_BLOB(), datos_basicos(2200001,'Jose','Perez',verificar_telefono(42400011001),'M',(to_date('23-08-1995'))), PERIODO(to_date('20-11-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO1.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(2, 2, EMPTY_BLOB(), datos_basicos(2200002,'Julio','Morantes',verificar_telefono(42400011002),'M',(to_date('23-08-1995'))), PERIODO(to_date('8-6-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO2.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(3, 3, EMPTY_BLOB(), datos_basicos(2200003,'Sara','Sojo',verificar_telefono(42400011003),'F',(to_date('23-04-1997'))), PERIODO(to_date('23-6-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO3.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(4, 4, EMPTY_BLOB(), datos_basicos(2200004,'Francisco','Sojo',verificar_telefono(42400011004),'M',(to_date('13-07-1990'))), PERIODO(to_date('21-1-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO4.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(5, 5, EMPTY_BLOB(), datos_basicos(2200005,'Vega','Ponceleon',verificar_telefono(42400011005),'M',(to_date('17-07-1999'))), PERIODO(to_date('9-5-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO5.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(6, 6, EMPTY_BLOB(), datos_basicos(2200006,'Liana','Ponceleon',verificar_telefono(42400011006),'F',(to_date('17-07-1989'))), PERIODO(to_date('5-3-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO6.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(7, 7, EMPTY_BLOB(), datos_basicos(2200007,'Lucía','Aure',verificar_telefono(42400011007),'F',(to_date('07-07-1999'))), PERIODO(to_date('24-5-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO7.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(8, 8, EMPTY_BLOB(), datos_basicos(2200008,'Daría','Martinez',verificar_telefono(42400011008),'F',(to_date('11-10-1998'))), PERIODO(to_date('25-10-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO8.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(9, 9, EMPTY_BLOB(), datos_basicos(2200009,'Valerio','Aure',verificar_telefono(42400011009),'M',(to_date('18-12-1997'))), PERIODO(to_date('20-2-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO9.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(10, 10, EMPTY_BLOB(), datos_basicos(2200010,'Liam','Sojo',verificar_telefono(42400011010),'M',(to_date('08-12-1998'))), PERIODO(to_date('7-5-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO10.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(11, 11, EMPTY_BLOB(), datos_basicos(2200011,'Bril','Aure',verificar_telefono(42400011011),'M',(to_date('20-06-1995'))), PERIODO(to_date('15-3-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO11.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(12, 12, EMPTY_BLOB(), datos_basicos(2200012,'Almado','Rey',verificar_telefono(42400011012),'M',(to_date('25-09-1997'))), PERIODO(to_date('24-8-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO12.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(13, 13, EMPTY_BLOB(), datos_basicos(2200013,'Iker','Ponceleon',verificar_telefono(42400011013),'M',(to_date('13-02-1987'))), PERIODO(to_date('11-2-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO13.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(14, 14, EMPTY_BLOB(), datos_basicos(2200014,'Abril','Martinez',verificar_telefono(42400011014),'F',(to_date('08-02-1997'))), PERIODO(to_date('2-5-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO14.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(15, 15, EMPTY_BLOB(), datos_basicos(2200015,'Daniela','Martinez',verificar_telefono(42400011015),'F',(to_date('15-10-1999'))), PERIODO(to_date('14-4-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO15.jpg';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(16, 1, EMPTY_BLOB(), datos_basicos(2200016,'Olivia','Rey',verificar_telefono(42400011016),'F',(to_date('05-01-1998'))), PERIODO(to_date('5-9-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO16.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(17, 2, EMPTY_BLOB(), datos_basicos(2200017,'Daniel','Morantes',verificar_telefono(42400011017),'M',(to_date('08-11-1996'))), PERIODO(to_date('21-3-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO17.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(18, 3, EMPTY_BLOB(), datos_basicos(2200018,'Sofía','Sojo',verificar_telefono(42400011018),'F',(to_date('18-12-1998'))), PERIODO(to_date('18-7-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO18.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(19, 4, EMPTY_BLOB(), datos_basicos(2200019,'Andrea','Perez',verificar_telefono(42400011019),'F',(to_date('08-10-1997'))), PERIODO(to_date('4-11-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO19.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(20, 5, EMPTY_BLOB(), datos_basicos(2200020,'Carmen','Pi',verificar_telefono(42400011020),'F',(to_date('15-12-1999'))), PERIODO(to_date('14-2-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO20.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(21, 6, EMPTY_BLOB(), datos_basicos(2200021,'Lara','Ponceleon',verificar_telefono(42400011021),'F',(to_date('09-09-1997'))), PERIODO(to_date('24-1-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO21.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(22, 7, EMPTY_BLOB(), datos_basicos(2200022,'Dylan','Martinez',verificar_telefono(42400011022),'M',(to_date('10-12-1993'))), PERIODO(to_date('6-11-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO22.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(23, 8, EMPTY_BLOB(), datos_basicos(2200023,'Liana','Rey',verificar_telefono(42400011023),'F',(to_date('18-02-1996'))), PERIODO(to_date('2-2-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO23.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(24, 9, EMPTY_BLOB(), datos_basicos(2200024,'Paul','Rey',verificar_telefono(42400011024),'M',(to_date('11-11-1998'))), PERIODO(to_date('25-3-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO24.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(25, 10, EMPTY_BLOB(), datos_basicos(2200025,'Alba','Pi',verificar_telefono(42400011025),'F',(to_date('12-12-1999'))), PERIODO(to_date('6-3-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO25.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(26, 11, EMPTY_BLOB(), datos_basicos(2200026,'Enrique','Perez',verificar_telefono(42400011026),'M',(to_date('07-03-1994'))), PERIODO(to_date('6-11-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO26.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(27, 12, EMPTY_BLOB(), datos_basicos(2200027,'Gabriel','Perez',verificar_telefono(42400011027),'M',(to_date('18-12-1999'))), PERIODO(to_date('17-3-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO27.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(28, 13, EMPTY_BLOB(), datos_basicos(2200028,'Lara','Rey',verificar_telefono(42400011028),'F',(to_date('18-04-1998'))), PERIODO(to_date('15-1-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO28.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(29, 14, EMPTY_BLOB(), datos_basicos(2200029,'Julio','Perez',verificar_telefono(42400011029),'M',(to_date('17-02-1995'))), PERIODO(to_date('27-4-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO29.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(30, 15, EMPTY_BLOB(), datos_basicos(2200030,'Victoria','Pirr',verificar_telefono(42400011030),'F',(to_date('18-11-1999'))), PERIODO(to_date('27-5-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO30.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(31, 1, EMPTY_BLOB(), datos_basicos(2200031,'Carla','Parra',verificar_telefono(42400011031),'F',(to_date('08-07-1998'))), PERIODO(to_date('11-3-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO31.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(32, 2, EMPTY_BLOB(), datos_basicos(2200032,'Jorge','Ponceleon',verificar_telefono(42400011032),'M',(to_date('15-12-1997'))), PERIODO(to_date('15-8-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO32.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(33, 3, EMPTY_BLOB(), datos_basicos(2200033,'Amir','Pi',verificar_telefono(42400011033),'M',(to_date('10-12-1996'))), PERIODO(to_date('12-6-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO33.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(34, 4, EMPTY_BLOB(), datos_basicos(2200034,'Lautaro','Perez',verificar_telefono(42400011034),'M',(to_date('26-04-1994'))), PERIODO(to_date('25-2-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO34.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(35, 5, EMPTY_BLOB(), datos_basicos(2200035,'Valeria','Pi',verificar_telefono(42400011035),'M',(to_date('08-11-1998'))), PERIODO(to_date('12-7-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO35.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(36, 6, EMPTY_BLOB(), datos_basicos(2200036,'Eric','Ponceleon',verificar_telefono(42400011036),'M',(to_date('18-12-1999'))), PERIODO(to_date('23-1-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO36.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(37, 7, EMPTY_BLOB(), datos_basicos(2200037,'Victor','Rey',verificar_telefono(42400011037),'M',(to_date('16-02-1998'))), PERIODO(to_date('26-10-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO37.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(38, 8, EMPTY_BLOB(), datos_basicos(2200038,'Julia','Aure',verificar_telefono(42400011038),'F',(to_date('09-11-1995'))), PERIODO(to_date('14-6-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO38.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(39, 9, EMPTY_BLOB(), datos_basicos(2200039,'Carla','Sojo',verificar_telefono(42400011039),'F',(to_date('18-12-1992'))), PERIODO(to_date('3-4-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO39.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(40, 10, EMPTY_BLOB(), datos_basicos(2200040,'Candela','Rey',verificar_telefono(42400011040),'F',(to_date('25-06-1997'))), PERIODO(to_date('9-1-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO40.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(41, 11, EMPTY_BLOB(), datos_basicos(2200041,'Alejandro','Sojo',verificar_telefono(42400011041),'M',(to_date('13-07-1996'))), PERIODO(to_date('28-11-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO41.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(42, 12, EMPTY_BLOB(), datos_basicos(2200042,'Sandra','Morantes',verificar_telefono(42400011042),'F',(to_date('17-12-1998'))), PERIODO(to_date('9-8-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO42.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(43, 13, EMPTY_BLOB(), datos_basicos(2200043,'Daniela','Sojo',verificar_telefono(42400011043),'F',(to_date('18-04-1999'))), PERIODO(to_date('28-1-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO43.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(44, 14, EMPTY_BLOB(), datos_basicos(2200044,'Triana','Pi',verificar_telefono(42400011044),'F',(to_date('10-12-1998'))), PERIODO(to_date('2-1-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO44.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(45, 15, EMPTY_BLOB(), datos_basicos(2200045,'Noa','Martinez',verificar_telefono(42400011045),'F',(to_date('11-12-1999'))), PERIODO(to_date('9-9-2022'),null),null) Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO45.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;

--Empleados despedidos


declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(46, 1, EMPTY_BLOB(), datos_basicos(20130446,'Jesus','Navarro',verificar_telefono(42436511045),'M',(to_date('01-12-1987'))), PERIODO(to_date('9-9-2022'),to_date('9-10-2022')),'Accidente laboral') Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO46.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into empleado values(47, 1, EMPTY_BLOB(), datos_basicos(25933862,'Andres','Ruiz',verificar_telefono(42424686543),'M',(to_date('01-10-1993'))), PERIODO(to_date('1-4-2022'),to_date('15-4-2022')),'Impuntualidad y faltas al trabajo') Returning foto_empleado into V_TEMP;
V_NOMBRE_FOTO:='EMPLEADO47.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;




insert all 
into rol (id_rol, nombre_rol, descripcion_funciones) values (1, 'Cocinero', 'Encargado de la cocina y de preparar los platos')
into rol (id_rol, nombre_rol, descripcion_funciones) values (2, 'Mesonero', 'Encargado de atender a los clientes')
select 1 from dual;

insert all 
into empleado_rol (id_rol, id_empleado) values (1, 1)
into empleado_rol (id_rol, id_empleado) values (2, 2)
into empleado_rol (id_rol, id_empleado) values (1, 3)
into empleado_rol (id_rol, id_empleado) values (1, 4)
into empleado_rol (id_rol, id_empleado) values (2, 5)
into empleado_rol (id_rol, id_empleado) values (2, 6)
into empleado_rol (id_rol, id_empleado) values (2, 7)
into empleado_rol (id_rol, id_empleado) values (2, 8)
into empleado_rol (id_rol, id_empleado) values (2, 9)
into empleado_rol (id_rol, id_empleado) values (2, 10)
into empleado_rol (id_rol, id_empleado) values (2, 11)
into empleado_rol (id_rol, id_empleado) values (2, 12)
into empleado_rol (id_rol, id_empleado) values (2, 13)
into empleado_rol (id_rol, id_empleado) values (2, 14)
into empleado_rol (id_rol, id_empleado) values (2, 15)
into empleado_rol (id_rol, id_empleado) values (1, 16)
into empleado_rol (id_rol, id_empleado) values (1, 17)
into empleado_rol (id_rol, id_empleado) values (2, 18)
into empleado_rol (id_rol, id_empleado) values (2, 19)
into empleado_rol (id_rol, id_empleado) values (1, 20)
into empleado_rol (id_rol, id_empleado) values (1, 21)
into empleado_rol (id_rol, id_empleado) values (1, 22)
into empleado_rol (id_rol, id_empleado) values (1, 23)
into empleado_rol (id_rol, id_empleado) values (1, 24)
into empleado_rol (id_rol, id_empleado) values (1, 25)
into empleado_rol (id_rol, id_empleado) values (1, 26)
into empleado_rol (id_rol, id_empleado) values (1, 27)
into empleado_rol (id_rol, id_empleado) values (1, 28)
into empleado_rol (id_rol, id_empleado) values (1, 29)
into empleado_rol (id_rol, id_empleado) values (1, 30)
into empleado_rol (id_rol, id_empleado) values (2, 31)
into empleado_rol (id_rol, id_empleado) values (1, 32)
into empleado_rol (id_rol, id_empleado) values (2, 33)
into empleado_rol (id_rol, id_empleado) values (2, 34)
into empleado_rol (id_rol, id_empleado) values (1, 35)
into empleado_rol (id_rol, id_empleado) values (2, 36)
into empleado_rol (id_rol, id_empleado) values (1, 37)
into empleado_rol (id_rol, id_empleado) values (2, 38)
into empleado_rol (id_rol, id_empleado) values (1, 39)
into empleado_rol (id_rol, id_empleado) values (2, 40)
into empleado_rol (id_rol, id_empleado) values (1, 41)
into empleado_rol (id_rol, id_empleado) values (1, 42)
into empleado_rol (id_rol, id_empleado) values (1, 43)
into empleado_rol (id_rol, id_empleado) values (2, 44)
into empleado_rol (id_rol, id_empleado) values (1, 45)
select 1 from dual;

insert into empleado_rol (id_rol, id_empleado) values (1, 46);
insert into empleado_rol (id_rol, id_empleado) values (1, 47);



--PRODUCTOS

declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(1,'ALBAHACA',EMPTY_BLOB(),periodo(to_date('21-11-2022'),to_date('1-12-2022')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='ALBAHACA.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(2,'AZUCAR',EMPTY_BLOB(),periodo(to_date('19-11-2022'),to_date('19-1-2023')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='AZUCAR.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(3,'BULTOHARINA',EMPTY_BLOB(),periodo(to_date('18-11-2022'),to_date('25-1-2023')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='BULTOHARINA.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(4,'CEBOLLA',EMPTY_BLOB(),periodo(to_date('25-11-2022'),to_date('5-12-2022')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='CEBOLLA.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(5,'COCACOLA',EMPTY_BLOB(),periodo(to_date('22-11-2022'),to_date('30-1-2023')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='COCACOLA.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(6,'COSTILLA',EMPTY_BLOB(),periodo(to_date('25-11-2022'),to_date('25-12-2022')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='COSTILLA.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(7,'FRESA',EMPTY_BLOB(),periodo(to_date('25-11-2022'),to_date('30-11-2022')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='FRESA.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(8,'HUEVO',EMPTY_BLOB(),periodo(to_date('25-11-2022'),to_date('1-12-2022')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='HUEVO.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(9,'JAMON',EMPTY_BLOB(),periodo(to_date('25-11-2022'),to_date('5-12-2022')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='JAMON.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(10,'MIXMARISCOS',EMPTY_BLOB(),periodo(to_date('23-11-2022'),to_date('4-2-2023')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='MIXMARISCOS.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(11,'MOZZARELLA',EMPTY_BLOB(),periodo(to_date('21-11-2022'),to_date('4-12-2022')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='MOZZARELLA.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(12,'PAPA',EMPTY_BLOB(),periodo(to_date('21-11-2022'),to_date('6-12-2022')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='PAPA.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(13,'PIMIENTA',EMPTY_BLOB(),periodo(to_date('22-11-2022'),to_date('30-12-2023')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='PIMIENTA.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(14,'RIBEYE',EMPTY_BLOB(),periodo(to_date('25-11-2022'),to_date('8-12-2022')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='RIBEYE.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(15,'SAL',EMPTY_BLOB(),periodo(to_date('11-11-2022'),to_date('5-12-2023')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='SAL.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(16,'TBONE',EMPTY_BLOB(),periodo(to_date('25-11-2022'),to_date('30-12-2022')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='TBONE.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;
/
declare
V_TEMP BLOB;
V_BFILE BFILE;
V_NOMBRE_FOTO VARCHAR2(50);
BEGIN
insert into producto values(17,'TOMATE',EMPTY_BLOB(),periodo(to_date('25-11-2022'),to_date('30-11-2022')))
Returning foto_producto into V_TEMP;
V_NOMBRE_FOTO:='TOMATE.png';
V_BFILE:= BFILENAME('OBJETOS_LOB', V_NOMBRE_FOTO);
DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADFROMFILE(V_TEMP, V_BFILE, DBMS_LOB.GETLENGTH(V_BFILE));
DBMS_LOB.CLOSE(V_BFILE);
COMMIT;
END;





insert into reserva values(20,2,periodo(TO_DATE('2022-10-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),1,1);

insert into reserva values(21,1,periodo(TO_DATE('2022-11-11 10:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),2,1);
insert into reserva values(22,2,periodo(TO_DATE('2022-10-12 11:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),3,1);
insert into reserva values(23,3,periodo(TO_DATE('2022-10-13 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),4,1);
insert into reserva values(24,4,periodo(TO_DATE('2022-10-14 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),5,1);
insert into reserva values(25,2,periodo(TO_DATE('2022-10-15 14:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),6,1);
insert into reserva values(26,1,periodo(TO_DATE('2022-10-16 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),7,1);
insert into reserva values(27,2,periodo(TO_DATE('2022-10-10 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),8,1);
insert into reserva values(28,1,periodo(TO_DATE('2022-11-11 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),9,1);
insert into reserva values(29,2,periodo(TO_DATE('2022-10-12 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),10,1);
insert into reserva values(30,3,periodo(TO_DATE('2022-10-13 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),11,1);
insert into reserva values(31,4,periodo(TO_DATE('2022-10-14 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),12,1);
insert into reserva values(32,2,periodo(TO_DATE('2022-10-15 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),13,1);
insert into reserva values(33,1,periodo(TO_DATE('2022-10-16 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),14,1);
insert into reserva values(34,2,periodo(TO_DATE('2022-10-10 11:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),9,1);
insert into reserva values(35,1,periodo(TO_DATE('2022-11-11 10:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),10,1);
insert into reserva values(36,2,periodo(TO_DATE('2022-10-12 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),11,1);
insert into reserva values(37,3,periodo(TO_DATE('2022-10-13 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),12,1);
insert into reserva values(38,4,periodo(TO_DATE('2022-10-14 14:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),13,1);
insert into reserva values(39,2,periodo(TO_DATE('2022-10-15 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),14,1);
insert into reserva values(40,1,periodo(TO_DATE('2022-10-16 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),15,1);



insert into reserva values(41,2,periodo(TO_DATE('2022-12-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),9,2);
insert into reserva values(42,1,periodo(TO_DATE('2022-12-11 10:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),10,2);
insert into reserva values(43,2,periodo(TO_DATE('2022-12-12 11:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),11,2);
insert into reserva values(44,3,periodo(TO_DATE('2022-12-13 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),12,2);
insert into reserva values(45,4,periodo(TO_DATE('2022-12-14 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),13,2);
insert into reserva values(46,2,periodo(TO_DATE('2022-12-15 14:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),14,2);
insert into reserva values(47,1,periodo(TO_DATE('2022-12-16 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),15,2);

insert into reserva values(48,2,periodo(TO_DATE('2022-12-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),1,2);
insert into reserva values(49,1,periodo(TO_DATE('2022-12-11 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),2,2);
insert into reserva values(50,2,periodo(TO_DATE('2022-12-12 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),3,2);
insert into reserva values(51,3,periodo(TO_DATE('2022-12-13 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),4,2);
insert into reserva values(52,4,periodo(TO_DATE('2022-12-14 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),5,2);
insert into reserva values(53,2,periodo(TO_DATE('2022-12-15 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),6,2);
insert into reserva values(54,1,periodo(TO_DATE('2022-12-16 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),7,2);


insert into inventario values(1,1,1,to_date('25-12-2022'),5);
insert into inventario values(2,1,2,to_date('30-11-2022'),10);
insert into inventario values(3,1,3,to_date('17-11-2022'),15);
insert into inventario values(4,1,4,to_date('01-01-2023'),4);
insert into inventario values(5,1,5,to_date('03-01-2023'),2);
insert into inventario values(6,1,6,to_date('02-11-2022'),3);
insert into inventario values(7,1,7,to_date('25-10-2022'),8);
insert into inventario values(8,1,8,to_date('25-12-2022'),10);
insert into inventario values(9,1,9,to_date('15-01-2023'),7);
insert into inventario values(10,1,10,to_date('05-01-2023'),10);

insert into inventario values(11,2,11,to_date('25-12-2022'),10);
insert into inventario values(12,2,12,to_date('30-11-2022'),5);
insert into inventario values(13,2,13,to_date('22-11-2022'),8);
insert into inventario values(14,2,14,to_date('05-01-2023'),20);
insert into inventario values(15,2,15,to_date('06-01-2023'),7);

insert all 
into formapago values(1, 'Efectivo', 2, 2)
into formapago values(2, 'POS', 2, 3)

into formapago values(3, 'Zelle', 3, 15)

into formapago values(4, 'Zinli', 4, 20)
into formapago values(5, 'Efectivo', 4, 5)

into formapago values(6, 'Pipol Pay', 5, 7)
into formapago values(7, 'Efectivo', 5, 5)

into formapago values(8, 'PayPal', 6, 12)

into formapago values(9, 'Criptomonedas', 7, 12)

into formapago values(10, 'Zinli', 8, 8)
into formapago values(11, 'Zelle', 8, 8)

into formapago values(12, 'Efectivo', 9, 3)

into formapago values(13, 'Pipol Pay', 10, 7)

into formapago values(14, 'POS', 11, 7)

into formapago values(15, 'PayPal', 12, 5)
into formapago values(16, 'Criptomonedas', 12, 5)

into formapago values(17, 'Zelle', 13, 8)

into formapago values(18, 'Zinli', 14, 11)

into formapago values(19, 'Zelle', 15, 8)
SELECT 1 FROM dual;



/*INSERTS TABLA PRUEBA*/
insert into prueba values (1,'CESAR',24);
insert into prueba values (2,'JHONNY',22);
insert into prueba values (3,'DANIEL',22);


insert into evento values(1,'Noches de Karaoke',periodo(to_date('01-NOV-2020'),to_date('03-NOV-2020')),1,'Grupo Tartaro','Presentacion de Karaoke, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'00:00:00.00' HOUR TO SECOND(7));
insert into evento values(2,'Tardes de Mariachis',periodo(to_date('8-NOV-2020'),to_date('12-NOV-2020')),1,'Los Mariachis de Guadalajara','Presentacion de Mariachis, tienen derecho a una comida y un descanso de 10 minutos cada  hora si asi lo desean',interval'13:00:00.00' HOUR TO SECOND(7),interval'16:00:00.00' HOUR TO SECOND(7));
insert into evento values(3,'Noches de Karaoke',periodo(to_date('22-NOV-2020'),to_date('25-NOV-2020')),1, 'Los Atomicos','Presentacion de Karaoke, sin mas condiciones',interval'18:00:00.00' HOUR TO SECOND(7),interval'02:00:00.00' HOUR TO SECOND(7));
insert into evento values(4,'Grupo de Salsa ',periodo(to_date('27-NOV-2023'),to_date('29-NOV-2023')),2,'Salserones','Presentacion de Grupo de Salsa, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'22:00:00.00' HOUR TO SECOND(7));
insert into evento values(5,'Amanecer Gaitero ',periodo(to_date('30-NOV-2023'),to_date('30-NOV-2023')),2,'Gaita Zulia Show','Presentacion de Gaita, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'22:00:00.00' HOUR TO SECOND(7));
insert into evento values(6,'Llaneros ',periodo(to_date('25-NOV-2023'),to_date('28-NOV-2023')),2,'La gran Barinesa','Presentacion de musica llanera, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'22:00:00.00' HOUR TO SECOND(7));
insert into evento values(7,'Grupo Rock Alternativo ',periodo(to_date('26-NOV-2023'),to_date('27-NOV-2023')),2,'The Colanders','Presentacion de Rock, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'22:00:00.00' HOUR TO SECOND(7));
insert into evento values(8,'Tardes de Blues',periodo(to_date('01-FEB-2023'),to_date('03-FEB-2023')),3,'DJ Tarrer','DJ, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'22:00:00.00' HOUR TO SECOND(7));
insert into evento values(9,'Mañanas de Clasicos',periodo(to_date('03-MAR-2023'),to_date('07-MAR-2023')),3,'DJ TONY','DJ, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'22:00:00.00' HOUR TO SECOND(7));
insert into evento values(10,'Merengue de los 80s',periodo(to_date('03-MAR-2023'),to_date('07-MAR-2023')),4,'DJ RAUL','DJ, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'22:00:00.00' HOUR TO SECOND(7));
insert into evento values(11,'Pop de los 2000s',periodo(to_date('04-MAR-2023'),to_date('07-MAR-2023')),4,'Grupo Los Andantes','Sin Condicones Especiales',interval'18:00:00.00' HOUR TO SECOND(7),interval'22:00:00.00' HOUR TO SECOND(7));
insert into evento values(12,'Tardes de Jazz',periodo(to_date('05-MAR-2023'),to_date('07-MAR-2023')),4,'GRUPO JS','Sin Condicones Especiales',interval'18:00:00.00' HOUR TO SECOND(7),interval'22:00:00.00' HOUR TO SECOND(7));
insert into evento values(13,'Noches de Karaoke',periodo(to_date('1-MAY-2023'),to_date('05-MAY-2023')),5,'Grupo Tartaro','Presentacion de Karaoke, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'20:00:00.00' HOUR TO SECOND(7));
insert into evento values(14,'Amanecer Llanero',periodo(to_date('01-JUN-2023'),to_date('03-JUN-2023')),6,'Grupo Luises',' Sin Condicones Especiales',interval'10:00:00.00' HOUR TO SECOND(7),interval'12:00:00.00' HOUR TO SECOND(7));
insert into evento values(15,'Noches de Karaoke',periodo(to_date('01-SEP-2023'),to_date('03-SEP-2023')),7,'Grupo Super Karaoke','Presentacion de Karaoke, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'00:00:00.00' HOUR TO SECOND(7));
insert into evento values(16,'Grupo Rock Alternativo ',periodo(to_date('01-NOV-2020'),to_date('01-NOV-2020')),7,'The Rocks','Presentacion de Rock, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'22:00:00.00' HOUR TO SECOND(7));
insert into evento values(17,'Grupo Rock Alternativo ',periodo(to_date('01-NOV-2020'),to_date('27-NOV-2020')),7,'Los Sin Nombre','Presentacion de Rock, tienen derecho a un servicio y un descanso de 15 minutos cada 2 horas si asi lo desean',interval'18:00:00.00' HOUR TO SECOND(7),interval'22:00:00.00' HOUR TO SECOND(7));
insert into evento values(18,'Tardes de Mariachis',periodo(to_date('8-NOV-2020'),to_date('12-NOV-2020')),10,'Los Mariachis de Tepuy','Presentacion de Mariachis, tienen derecho a una comida y un descanso de 10 minutos cada  hora si asi lo desean',interval'13:00:00.00' HOUR TO SECOND(7),interval'16:00:00.00' HOUR TO SECOND(7));
insert into evento values(19,'Tardes de Mariachis',periodo(to_date('8-NOV-2020'),to_date('12-NOV-2020')),11,'Los Mariachis de Tellan','Presentacion de Mariachis, tienen derecho a una comida y un descanso de 10 minutos cada  hora si asi lo desean',interval'13:00:00.00' HOUR TO SECOND(7),interval'16:00:00.00' HOUR TO SECOND(7));
insert into evento values(20,'Tardes de Mariachis',periodo(to_date('8-NOV-2020'),to_date('12-NOV-2020')),12,'Los Mariachis del Norte','Presentacion de Mariachis, tienen derecho a una comida y un descanso de 10 minutos cada  hora si asi lo desean',interval'13:00:00.00' HOUR TO SECOND(7),interval'16:00:00.00' HOUR TO SECOND(7));
insert into evento values(21,'Noches de Karaoke',periodo(to_date('22-NOV-2020'),to_date('25-NOV-2020')),12, 'Los Geniales','Presentacion de Karaoke, sin mas condiciones',interval'18:00:00.00' HOUR TO SECOND(7),interval'02:00:00.00' HOUR TO SECOND(7));
insert into evento values(22,'Noches de Karaoke',periodo(to_date('22-NOV-2020'),to_date('25-NOV-2020')),13, 'Los Increibles','Presentacion de Karaoke, sin mas condiciones',interval'18:00:00.00' HOUR TO SECOND(7),interval'02:00:00.00' HOUR TO SECOND(7));
insert into evento values(23,'Noches de Karaoke',periodo(to_date('22-NOV-2020'),to_date('25-NOV-2020')),14, 'Los Mejores','Presentacion de Karaoke, sin mas condiciones',interval'18:00:00.00' HOUR TO SECOND(7),interval'02:00:00.00' HOUR TO SECOND(7));

commit;
truncate table evento;


















/*************************/

select * from reserva;
select * from pedido;
select * from pedidoplato;
select * from factura;
select * from formapago;


/*  INSERTS PARA EL REPORTE 12 */


insert into reserva values(55,2,periodo(TO_DATE('2023-01-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),15,1);
insert into reserva values(56,1,periodo(TO_DATE('2023-01-11 10:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),12,2);
insert into reserva values(57,2,periodo(TO_DATE('2023-01-12 11:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),13,15);
insert into reserva values(58,3,periodo(TO_DATE('2023-01-13 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),14,14);
insert into reserva values(59,4,periodo(TO_DATE('2023-01-14 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),5,13);
insert into reserva values(60,2,periodo(TO_DATE('2023-01-15 14:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),6,11);
insert into reserva values(61,1,periodo(TO_DATE('2023-01-16 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),7,9);
insert into reserva values(62,2,periodo(TO_DATE('2023-01-17 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),8,13);
insert into reserva values(63,1,periodo(TO_DATE('2023-01-18 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),9,4);
insert into reserva values(64,2,periodo(TO_DATE('2023-01-19 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),11,5);
insert into reserva values(65,3,periodo(TO_DATE('2023-01-20 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),1,7);
insert into reserva values(66,4,periodo(TO_DATE('2023-01-21 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),2,6);
insert into reserva values(67,2,periodo(TO_DATE('2023-01-22 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),3,3);
insert into reserva values(68,1,periodo(TO_DATE('2023-01-23 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),4,8);
insert into reserva values(69,2,periodo(TO_DATE('2023-01-24 11:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),9,9);
insert into reserva values(70,1,periodo(TO_DATE('2023-01-25 10:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),10,12);
insert into reserva values(71,2,periodo(TO_DATE('2023-01-26 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),11,10);
insert into reserva values(72,3,periodo(TO_DATE('2023-01-27 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),12,15);
insert into reserva values(73,4,periodo(TO_DATE('2023-01-28 14:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),13,1);
insert into reserva values(74,2,periodo(TO_DATE('2023-01-29 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),1,2);
insert into reserva values(75,1,periodo(TO_DATE('2023-01-30 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),2,3);

insert into pedido values (16,'Delivery','Colinas de la California, Calle Santa Margarita',15,to_date('2023-01-10', 'yyyy/mm/dd'),55);
insert into pedido values (17,'Delivery','San Bernardino, Avenida Vollmer',12,to_date('2023-01-11', 'yyyy/mm/dd'),56);
insert into pedido values (18,'Delivery','San Bernardino, Avenida Vollmer',13,to_date('2023-01-12', 'yyyy/mm/dd'),57);
insert into pedido values (19,'Delivery','Calle Paris, Las Mercedes',14,to_date('2023-01-13', 'yyyy/mm/dd'),58);
insert into pedido values (20,'Delivery','Av La Colina, Las Acasias',5,to_date('2023-01-14', 'yyyy/mm/dd'),59);
insert into pedido values (21,'Delivery','Calle Paris, Las Mercedes',6,to_date('2023-01-15', 'yyyy/mm/dd'),60);
insert into pedido values (22,'Delivery','Av La Colina, Las Acasias',7,to_date('2023-01-16', 'yyyy/mm/dd'),61);
insert into pedido values (23,'Delivery','Av Intercomunal, El Valle',8,to_date('2023-01-17', 'yyyy/mm/dd'),62);
insert into pedido values (24,'Delivery','Av La Victoria',9,to_date('2023-01-18', 'yyyy/mm/dd'),63);
insert into pedido values (25,'Delivery','Av Libertadpr, Chacao',11,to_date('2023-01-19', 'yyyy/mm/dd'),64);
insert into pedido values (26,'Delivery','Plaza Vzla',1,to_date('2023-01-20', 'yyyy/mm/dd'),65);
insert into pedido values (27,'Delivery','Petare',2,to_date('2023-01-21', 'yyyy/mm/dd'),66);
insert into pedido values (28,'Delivery','Chacaito',3,to_date('2023-01-22', 'yyyy/mm/dd'),67);
insert into pedido values (29,'Delivery','Altamira',4,to_date('2023-01-23', 'yyyy/mm/dd'),68);
insert into pedido values (30,'Delivery','La vega',9,to_date('2023-01-24', 'yyyy/mm/dd'),69);
insert into pedido values (31,'Delivery','Av Libertadpr, Chacao',10,to_date('2023-01-25', 'yyyy/mm/dd'),70);
insert into pedido values (32,'Delivery','Plaza Vzla',11,to_date('2023-01-26', 'yyyy/mm/dd'),71);
insert into pedido values (33,'Delivery','Petare',12,to_date('2023-01-27', 'yyyy/mm/dd'),72);
insert into pedido values (34,'Delivery','Chacaito',13,to_date('2023-01-28', 'yyyy/mm/dd'),73);
insert into pedido values (35,'Delivery','Colinas de la California, Calle Santa Margarita',1,to_date('2023-01-29', 'yyyy/mm/dd'),74);
insert into pedido values (36,'Delivery','Colinas de la California, Calle Santa Margarita',2,to_date('2023-01-30', 'yyyy/mm/dd'),75);

insert into factura values(16,to_date('2023-01-10', 'yyyy/mm/dd'),5);
insert into factura values(17,to_date('2023-01-11', 'yyyy/mm/dd'),5);
insert into factura values(18,to_date('2023-01-12', 'yyyy/mm/dd'),25);
insert into factura values(19,to_date('2023-01-13', 'yyyy/mm/dd'),15);
insert into factura values(20,to_date('2023-01-14', 'yyyy/mm/dd'),13);
insert into factura values(21,to_date('2023-01-15', 'yyyy/mm/dd'),11);
insert into factura values(22,to_date('2023-01-16', 'yyyy/mm/dd'),16);
insert into factura values(23,to_date('2023-01-17', 'yyyy/mm/dd'),22);
insert into factura values(24,to_date('2023-01-18', 'yyyy/mm/dd'),10);
insert into factura values(25,to_date('2023-01-19', 'yyyy/mm/dd'),13);
insert into factura values(26,to_date('2023-01-20', 'yyyy/mm/dd'),20);
insert into factura values(27,to_date('2023-01-21', 'yyyy/mm/dd'),18);
insert into factura values(28,to_date('2023-01-22', 'yyyy/mm/dd'),8);
insert into factura values(29,to_date('2023-01-23', 'yyyy/mm/dd'),11);
insert into factura values(30,to_date('2023-01-24', 'yyyy/mm/dd'),8);
insert into factura values(31,to_date('2023-01-25', 'yyyy/mm/dd'),7);
insert into factura values(32,to_date('2023-01-26', 'yyyy/mm/dd'),7);
insert into factura values(33,to_date('2023-01-27', 'yyyy/mm/dd'),10);
insert into factura values(34,to_date('2023-01-28', 'yyyy/mm/dd'),8);
insert into factura values(35,to_date('2023-01-29', 'yyyy/mm/dd'),7);
insert into factura values(36,to_date('2023-01-30', 'yyyy/mm/dd'),3);


/* id_pedido, calificacion, comentario, pedido_id(fk) plato_id(fk),factura_id(fk)*/
insert into pedidoplato values(16,8,'Me gusto, muy bueno',16,1,16);
insert into pedidoplato values(17,7,'Me gusto, bueno',17,1,17);
insert into pedidoplato values(18,5,'Ni bien ni mal',18,4,18);
insert into pedidoplato values(19,2,'No me gusto, sabia quemado',19,6,19);
insert into pedidoplato values(20,9,'Excelente',20,7,20);
insert into pedidoplato values(21,9,'Excelente',21,13,21);
insert into pedidoplato values(22,8,'Buenisima',22,8,22);
insert into pedidoplato values(23,7,'Buena',23,3,23);
insert into pedidoplato values(24,5,'Sin Comentario',24,10,24);
insert into pedidoplato values(25,8,'Sabroso',25,12,25);
insert into pedidoplato values(26,8,'Sabroso',26,2,26);
insert into pedidoplato values(27,6,'No estaba tan mal',27,5,27);
insert into pedidoplato values(28,4,'Super mal',28,11,28);
insert into pedidoplato values(29,8,'Muy buena',29,13,29);
insert into pedidoplato values(30,8,'100% Recomendada',30,11,30);
insert into pedidoplato values(31,8,'Sabroso',31,14,31);
insert into pedidoplato values(32,8,'Sabroso',32,14,32);
insert into pedidoplato values(33,6,'No estaba tan mal',33,10,33);
insert into pedidoplato values(34,4,'Super mal',34,11,34);
insert into pedidoplato values(35,8,'Muy buena',35,14,35);
insert into pedidoplato values(36,8,'100% Recomendada',36,15,36);


/*Inserts de Altamira*/
/*Fecha: 10 de enero 2023 Delivery*/
insert into reserva values(76,2,periodo(TO_DATE('2023-01-10 14:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),1,1);
insert into reserva values(77,1,periodo(TO_DATE('2023-01-10 10:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),2,1);
insert into reserva values(78,2,periodo(TO_DATE('2023-01-10 11:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),3,1);
insert into reserva values(79,3,periodo(TO_DATE('2023-01-10 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),4,1);
insert into reserva values(80,4,periodo(TO_DATE('2023-01-10 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),6,1);

/*Fecha: 10 de enero 2023 Local(Direccion null)*/
insert into reserva values(81,2,periodo(TO_DATE('2023-01-10 14:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),7,1);
insert into reserva values(82,1,periodo(TO_DATE('2023-01-10 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),8,1);
insert into reserva values(83,2,periodo(TO_DATE('2023-01-10 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),9,1);
insert into reserva values(84,1,periodo(TO_DATE('2023-01-10 09:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),10,1);
insert into reserva values(85,2,periodo(TO_DATE('2023-01-10 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),12,1);

/*-------------------------------------------------------------------------------------------------------------*/
/*Inserts de Chacao*/
/*Fecha: 20 de enero 2023 Pick-up*/
insert into reserva values(86,3,periodo(TO_DATE('2023-01-20 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),1,2);
insert into reserva values(87,4,periodo(TO_DATE('2023-01-20 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),2,2);
insert into reserva values(88,2,periodo(TO_DATE('2023-01-20 12:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),3,2);
insert into reserva values(89,1,periodo(TO_DATE('2023-01-20 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),4,2);
insert into reserva values(90,2,periodo(TO_DATE('2023-01-20 11:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),9,2);

/*Fecha: 20 de enero 2023 Local*/
insert into reserva values(91,2,periodo(TO_DATE('2023-01-20 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),7,2);
insert into reserva values(92,3,periodo(TO_DATE('2023-01-20 13:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),12,2);
insert into reserva values(93,4,periodo(TO_DATE('2023-01-20 14:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),13,2);
insert into reserva values(94,2,periodo(TO_DATE('2023-01-20 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),5,2);
insert into reserva values(95,1,periodo(TO_DATE('2023-01-20 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),null),6,2);



/*-------------------------------------------------------------------------------------------------------------*/
/*Inserts de Pedido*/
/*Fecha: 10 de enero 2023 Delivery en Pedido*/
select * from pedido
insert into pedido values (37,'Delivery','Colinas de la California, Calle Santa Margarita',1,to_date('2023-01-10', 'yyyy/mm/dd'),76);
insert into pedido values (38,'Delivery','San Bernardino, Avenida Vollmer',2,to_date('2023-01-10', 'yyyy/mm/dd'),77);
insert into pedido values (39,'Delivery','San Bernardino, Avenida Vollmer',3,to_date('2023-01-10', 'yyyy/mm/dd'),78);
insert into pedido values (40,'Delivery','Calle Paris, Las Mercedes',4,to_date('2023-01-10', 'yyyy/mm/dd'),79);
insert into pedido values (41,'Delivery','Av La Colina, Las Acasias',6,to_date('2023-01-10', 'yyyy/mm/dd'),80);

/*Fecha: 10 de enero 2023 Local(Direccion null)*/
insert into pedido values (42,'En el local','',7,to_date('2023-01-10', 'yyyy/mm/dd'),81);
insert into pedido values (43,'En el local','',8,to_date('2023-01-10', 'yyyy/mm/dd'),82);
insert into pedido values (44,'En el local','',9,to_date('2023-01-10', 'yyyy/mm/dd'),83);
insert into pedido values (45,'En el local','',10,to_date('2023-01-10', 'yyyy/mm/dd'),84);
insert into pedido values (46,'En el local','',12,to_date('2023-01-10', 'yyyy/mm/dd'),85);


/*Inserts de Chacao en Pedido*/
/*Fecha: 20 de enero 2023 Pick-up*/
insert into pedido values (47,'Pick-up','',1,to_date('2023-01-20', 'yyyy/mm/dd'),86);
insert into pedido values (48,'Pick-up','',2,to_date('2023-01-20', 'yyyy/mm/dd'),87);
insert into pedido values (49,'Pick-up','',3,to_date('2023-01-20', 'yyyy/mm/dd'),88);
insert into pedido values (50,'Pick-up','',4,to_date('2023-01-20', 'yyyy/mm/dd'),89);
insert into pedido values (51,'Pick-up','',9,to_date('2023-01-20', 'yyyy/mm/dd'),90);

/*Fecha: 20 de enero 2023 Local*/
insert into pedido values (52,'En el local','',7,to_date('2023-01-20', 'yyyy/mm/dd'),91);
insert into pedido values (53,'En el local','',12,to_date('2023-01-20', 'yyyy/mm/dd'),92);
insert into pedido values (54,'En el local','',13,to_date('2023-01-20', 'yyyy/mm/dd'),93);
insert into pedido values (55,'En el local','',5,to_date('2023-01-20', 'yyyy/mm/dd'),94);
insert into pedido values (56,'En el local','',6,to_date('2023-01-20', 'yyyy/mm/dd'),95);



/*Inserts en Factura:*/
/*Inserts de Altamira*/
/*Fecha: 10 de enero 2023 Delivery*/
insert into factura values(37,to_date('2023-01-10', 'yyyy/mm/dd'),22);
insert into factura values(38,to_date('2023-01-10', 'yyyy/mm/dd'),3);
insert into factura values(39,to_date('2023-01-10', 'yyyy/mm/dd'),7);
insert into factura values(40,to_date('2023-01-10', 'yyyy/mm/dd'),25);
insert into factura values(41,to_date('2023-01-10', 'yyyy/mm/dd'),13);

/*Fecha: 10 de enero 2023 Local(Direccion null)*/
insert into factura values(42,to_date('2023-01-10', 'yyyy/mm/dd'),12);
insert into factura values(43,to_date('2023-01-10', 'yyyy/mm/dd'),10);
insert into factura values(44,to_date('2023-01-10', 'yyyy/mm/dd'),16);
insert into factura values(45,to_date('2023-01-10', 'yyyy/mm/dd'),11);
insert into factura values(46,to_date('2023-01-10', 'yyyy/mm/dd'),8);

/*Inserts de Chacao*/
/*Fecha: 20 de enero 2023 Pick-up*/
insert into factura values(47,to_date('2023-01-20', 'yyyy/mm/dd'),20);
insert into factura values(48,to_date('2023-01-20', 'yyyy/mm/dd'),22);
insert into factura values(49,to_date('2023-01-20', 'yyyy/mm/dd'),25);
insert into factura values(50,to_date('2023-01-20', 'yyyy/mm/dd'),18);
insert into factura values(51,to_date('2023-01-20', 'yyyy/mm/dd'),16);

/*Fecha: 20 de enero 2023 Local*/
insert into factura values(52,to_date('2023-01-20', 'yyyy/mm/dd'),7);
insert into factura values(53,to_date('2023-01-20', 'yyyy/mm/dd'),7);
insert into factura values(54,to_date('2023-01-20', 'yyyy/mm/dd'),10);
insert into factura values(55,to_date('2023-01-20', 'yyyy/mm/dd'),8);
insert into factura values(56,to_date('2023-01-20', 'yyyy/mm/dd'),7);




/*-------------------------------------------------------------------------*/
/*Inserts en PedidoPlato*/
select * from pedidoplato

/*Fecha: 10 de enero 2023 Delivery*/
insert into pedidoplato values(37,8,'Me gusto, muy bueno', 37,3,37);
insert into pedidoplato values(38,7,'Me gusto, bueno',38,15,38);
insert into pedidoplato values(39,5,'Ni bien ni mal',39,14,39);
insert into pedidoplato values(40,2,'No me gusto, sabia quemado',40,4,40);
insert into pedidoplato values(41,9,'Excelente',41,12,41);

/*Fecha: 10 de enero 2023 Local(Direccion null)*/
insert into pedidoplato values(42,9,'Excelente',42,9,42);
insert into pedidoplato values(43,8,'Buenisima',43,10,43);
insert into pedidoplato values(44,7,'Buena',44,8,44);
insert into pedidoplato values(45,5,'Sin Comentario',45,13,45);
insert into pedidoplato values(46,8,'Sabroso',46,11,46);

/*Inserts de Chacao */
/*Fecha: 20 de enero 2023 Pick-up*/
insert into pedidoplato values(47,8,'Sabroso',47,2,47);
insert into pedidoplato values(48,6,'No estaba tan mal',48,3,48);
insert into pedidoplato values(49,4,'Super mal',49,4,49);
insert into pedidoplato values(50,8,'Muy buena',50,5,50);
insert into pedidoplato values(51,8,'100% Recomendada',51,8,51);

/*Fecha: 20 de enero 2023 Local*/
insert into pedidoplato values(52,8,'Sabroso',52,14,52);
insert into pedidoplato values(53,8,'Sabroso',53,14,53);
insert into pedidoplato values(54,6,'No estaba tan mal',54,10,54);
insert into pedidoplato values(55,4,'Super mal',55,11,55);
insert into pedidoplato values(56,8,'Muy buena',56,14,56);

insert all 
into formapago values(20, 'Efectivo', 16, 5)
into formapago values(21, 'Zinli', 17, 5)

into formapago values(22, 'Zelle', 18, 15)
into formapago values(23, 'Criptomonedas', 18, 10)

into formapago values(24, 'PayPal', 19, 8)
into formapago values(25, 'Pipol Pay', 19, 7)

into formapago values(26, 'Efectivo', 20, 6)
into formapago values(27, 'POS', 20, 7)

into formapago values(28, 'Criptomonedas', 21, 11)

into formapago values(29, 'Zinli', 22, 8)
into formapago values(30, 'Zelle', 22, 8)

into formapago values(31, 'POS', 23, 10)
into formapago values(32, 'Pipol Pay', 23, 12)

into formapago values(33, 'POS', 24, 10)

into formapago values(34, 'PayPal', 25, 5)
into formapago values(35, 'Criptomonedas', 25, 8)

into formapago values(36, 'Criptomonedas', 26, 15)
into formapago values(37, 'Efectivo', 26, 5)

into formapago values(38, 'Zelle', 27, 18)

into formapago values(39, 'Zinli', 28, 8)

into formapago values(40, 'Pipol Pay', 29, 11)

into formapago values(41, 'PayPal', 30, 8)

into formapago values(42, 'Efectivo', 31, 7)

into formapago values(43, 'Criptomonedas', 32, 7)

into formapago values(44, 'Zelle', 33, 10)

into formapago values(45, 'Zinli', 34, 8)

into formapago values(46, 'PayPal', 35, 7)

into formapago values(47, 'Efectivo', 36, 3)
select 1 from dual;

 
insert into formapago values(48, 'Efectivo', 37, 7);
insert into formapago values(49, 'POS', 37, 15);
insert into formapago values(50, 'Zelle', 38, 3);

insert into formapago values(51, 'Zinli', 39, 3);
insert into formapago values(52, 'PayPal', 39, 4);
insert into formapago values(53, 'Pipol Pay', 40, 20);
insert into formapago values(54, 'Efectivo', 40, 5);
insert into formapago values(55, 'POS', 41, 7);
insert into formapago values(56, 'Criptomonedas', 41, 6);


insert into formapago values(57, 'Zinli', 42, 6);
insert into formapago values(58, 'Zelle', 42, 6);
insert into formapago values(59, 'Criptomonedas', 43, 5);
insert into formapago values(60, 'Pipol Pay', 43, 5);
insert into formapago values(61, 'POS', 44, 10);
insert into formapago values(62, 'PayPal', 44, 6);
insert into formapago values(63, 'Criptomonedas', 45, 8);
insert into formapago values(64, 'Efectivo', 45, 3);
insert into formapago values(65, 'Zinli', 46, 4);
insert into formapago values(66, 'Zelle', 46, 4);


insert into formapago values(67, 'POS', 47, 10);
insert into formapago values(68, 'Pipol Pay', 47, 10);
insert into formapago values(69, 'PayPal', 48, 11);
insert into formapago values(70, 'Efectivo', 48, 11);
insert into formapago values(72, 'Criptomonedas', 49, 20);
insert into formapago values(73, 'Zelle', 49, 5);
insert into formapago values(74, 'Zinli', 50, 9);
insert into formapago values(75, 'PayPal', 50, 9);
insert into formapago values(76, 'Efectivo', 51, 8);
insert into formapago values(77, 'POS', 51, 8);

insert into formapago values(78, 'Efectivo', 52, 3);
insert into formapago values(79, 'Criptomonedas', 52, 4);
insert into formapago values(80, 'Zelle', 53, 6);
insert into formapago values(81, 'Efectivo', 53, 1);
insert into formapago values(82, 'POS', 54, 5);
insert into formapago values(83, 'Pipol Pay', 54, 5);
insert into formapago values(84, 'PayPal', 55, 4);
insert into formapago values(85, 'Criptomonedas', 55, 4);
insert into formapago values(86, 'Zinli', 56, 5);
insert into formapago values(87, 'Efectivo', 56, 2);

/*************************/

/*INSERTS PARA EL REPORTE 13*/

/*La Urbina: 3*/  
insert into reserva values(96,1,periodo(TO_DATE('11-FEB-2023'),null),12,3,1,10);
insert into reserva values(97,2,periodo(TO_DATE('12-FEB-2023'),null),13,3,3,40);
insert into reserva values(98,3,periodo(TO_DATE('13-FEB-2023'),null),14,3,4,70);
insert into reserva values(99,4,periodo(TO_DATE('14-FEB-2023'),null),5,3,5,100);

/*El Hatillo: 4*/
insert into reserva values(100,2,periodo(TO_DATE('15-FEB-2023'),null),6,4,2,20);
insert into reserva values(101,1,periodo(TO_DATE('16-FEB-2023'),null),7,4,2,20);
insert into reserva values(102,2,periodo(TO_DATE('17-FEB-2023'),null),8,4,3,40);
insert into reserva values(103,1,periodo(TO_DATE('18-FEB-2023'),null),9,4,2,20);
insert into reserva values(104,2,periodo(TO_DATE('19-FEB-2023'),null),11,4,6,120);

commit;



/*INSERTS DE EGRESOS*/



/***************************/




/*TODOS LOS SELECTS*/
select * from empleado;
select * from empleado_rol;
select * from rol;
select * from producto;
select * from pedidoplato;
select * from promocion;

select * from pedido;
select * from pedidoplato;
select * from reserva;

select * from producto;
select * from promocion;
select * from sugerenciadeldia;
select * from sugerenciadeldiaplato;
select * from menu;
select * from factura;
select c.datos_cliente.cedula,c.datos_cliente.nombre,c.datos_cliente.apellido, c.datos_cliente.telefono,    from cliente c;
select * from inventario;

/*PRUEBA, TABLA PARA PROBAR PERMISOS DE USUARIOS*/
SELECT * FROM PRUEBA;

SELECT TO_CHAR(fecha_inv, 'Month YYYY' ) as FECHA FROM INVENTARIO;
SELECT TO_CHAR(fecha_inv, 'Month' ) FROM INVENTARIO;

SELECT EXTRACT(MONTH FROM  fecha_inv) FROM inventario;

select * from egreso;
select * from evento;
select * from formapago;
select * from proveedor;
select * from PROVEEDOR_PEDIDO;
select * from receta;

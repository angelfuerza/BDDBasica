/*datos.sql*/

/*anotaciones
timestams en sql
SELECT TIMESTAMP("2017-07-23  13:10:11"); 



*/


/*avion*/
INSERT INTO avion(id_avion, modelo) VALUES(1001, 'boeing');
INSERT INTO avion(id_avion, modelo) VALUES(1002, 'boeing');
INSERT INTO avion(id_avion, modelo) VALUES(1003, 'boeing');
INSERT INTO avion(id_avion, modelo) VALUES(1004, 'boeing');
INSERT INTO avion(id_avion, modelo) VALUES(1005, 'boeing');

INSERT INTO avion(id_avion, modelo) VALUES(2001, 'airbus');
INSERT INTO avion(id_avion, modelo) VALUES(2002, 'airbus');
INSERT INTO avion(id_avion, modelo) VALUES(2003, 'airbus');
INSERT INTO avion(id_avion, modelo) VALUES(2004, 'airbus');
INSERT INTO avion(id_avion, modelo) VALUES(2005, 'airbus');

/*estado*/
INSERT INTO estado(id_estado, codigo_estado, descripcion) VALUES(101, 001,'OK');
INSERT INTO estado(id_estado, codigo_estado, descripcion) VALUES(102, 001,'OK');
INSERT INTO estado(id_estado, codigo_estado, descripcion) VALUES(103, 001,'OK');
INSERT INTO estado(id_estado, codigo_estado, descripcion) VALUES(104, 111,'LOST');
INSERT INTO estado(id_estado, codigo_estado, descripcion) VALUES(105, 002,'LANDING');

/*piloto*/
INSERT INTO piloto(id_piloto) VALUES(01);
INSERT INTO piloto(id_piloto) VALUES(02);
INSERT INTO piloto(id_piloto) VALUES(03);
INSERT INTO piloto(id_piloto) VALUES(04);
INSERT INTO piloto(id_piloto) VALUES(05);

/*ubicacion*/
INSERT INTO ubicacion(id_ubicacion, latitud, longitud, altitud) VALUES(000001,51 ,51 ,100 );
INSERT INTO ubicacion(id_ubicacion, latitud, longitud, altitud) VALUES(000002,61 ,62 ,70 );
INSERT INTO ubicacion(id_ubicacion, latitud, longitud, altitud) VALUES(000003,81 ,52 ,50 );
INSERT INTO ubicacion(id_ubicacion, latitud, longitud, altitud) VALUES(000004,21 ,52 ,90 );
INSERT INTO ubicacion(id_ubicacion, latitud, longitud, altitud) VALUES(000005,11 ,72 ,50 );


/*terminal*/
INSERT INTO terminal(id_terminal,nombre_terminal) VALUES(1, 'MADRID_BARAJAS');
INSERT INTO terminal(id_terminal,nombre_terminal) VALUES(2, 'BARCELONA_ELPRAT');

/*puerta_de_embarque*/
INSERT INTO puerta_de_embarque(id_puerta,nombre_puerta, pertenece_terminal, primera_puerta) VALUES(1,'puerta_1',1,1);
INSERT INTO puerta_de_embarque(id_puerta,nombre_puerta, pertenece_terminal, primera_puerta) VALUES(2,'puerta_2',1,1);
INSERT INTO puerta_de_embarque(id_puerta,nombre_puerta, pertenece_terminal, primera_puerta) VALUES(3,'puerta_3',1,1);
INSERT INTO puerta_de_embarque(id_puerta,nombre_puerta, pertenece_terminal, primera_puerta) VALUES(4,'puerta_4',1,1);
INSERT INTO puerta_de_embarque(id_puerta,nombre_puerta, pertenece_terminal, primera_puerta) VALUES(5,'puerta_5',1,1);

/*pista*/
INSERT INTO pista(id_pista, n_pista) VALUES(10, 01);
INSERT INTO pista(id_pista, n_pista) VALUES(11, 02);

/*vuelo*/
INSERT INTO vuelo(id_vuelo,idavionv,llegada_terminal,timestamp_llegadas,salida_terminal,timestamp_salidas,inicio_puerta,timestamp_inicia,destino_puerta,timestamp_acaba) VALUES(01,1001,1,'2021-03-2 11:45:00',2,'2021-03-2 10:30:00',2,'2021-03-2 10:35:00',2,'2021-03-2 11:55:00');
INSERT INTO vuelo(id_vuelo,idavionv,llegada_terminal,timestamp_llegadas,salida_terminal,timestamp_salidas,inicio_puerta,timestamp_inicia,destino_puerta,timestamp_acaba) VALUES(02,1002,2,'2021-03-4 10:45:00',1,'2021-03-4 10:52:00',3,'2021-03-4 8:30:00',1,'2021-03-2 11:15:00');
INSERT INTO vuelo(id_vuelo,idavionv,llegada_terminal,timestamp_llegadas,salida_terminal,timestamp_salidas,inicio_puerta,timestamp_inicia,destino_puerta,timestamp_acaba) VALUES(03,1003,1,'2021-03-5 11:45:00',2,'2021-03-5 11:40:00',4,'2021-03-5 10:30:00',4,'2021-03-5 12:00:00');
INSERT INTO vuelo(id_vuelo,idavionv,llegada_terminal,timestamp_llegadas,salida_terminal,timestamp_salidas,inicio_puerta,timestamp_inicia,destino_puerta,timestamp_acaba) VALUES(04,1004,2,'2021-03-6 13:30:00',1,'2021-03-6 14:01:00',5,'2021-03-6 12:30:00',2,'2021-03-6 14:20:00');
INSERT INTO vuelo(id_vuelo,idavionv,llegada_terminal,timestamp_llegadas,salida_terminal,timestamp_salidas,inicio_puerta,timestamp_inicia,destino_puerta,timestamp_acaba) VALUES(05,1005,1,'2021-03-2 23:10:00',2,'2021-03-2 23:21:00',1,'2021-03-2 21:30:00',3,'2021-03-2 23:40:00');
INSERT INTO vuelo(id_vuelo,idavionv,llegada_terminal,timestamp_llegadas,salida_terminal,timestamp_salidas,inicio_puerta,timestamp_inicia,destino_puerta,timestamp_acaba) VALUES(06,1005,2,'2021-03-5 21:30:00',1,'2021-03-5 23:21:00',1,'2021-03-2 21:30:00',3,'2021-03-2 23:40:00');

/*usa_avion*/

SET FOREIGN_KEY_CHECKS=0;
INSERT INTO usa_avion(idavion, idpiloto) VALUES(1001, 01);
INSERT INTO usa_avion(idavion, idpiloto) VALUES(1002, 02);
INSERT INTO usa_avion(idavion, idpiloto) VALUES(1003, 03);
INSERT INTO usa_avion(idavion, idpiloto) VALUES(1004, 04);
INSERT INTO usa_avion(idavion, idpiloto) VALUES(1005, 05);
INSERT INTO usa_avion(idavion, idpiloto) VALUES(2001, 06);
INSERT INTO usa_avion(idavion, idpiloto) VALUES(2002, 07);
INSERT INTO usa_avion(idavion, idpiloto) VALUES(2003, 08);
INSERT INTO usa_avion(idavion, idpiloto) VALUES(2004, 09);
INSERT INTO usa_avion(idavion, idpiloto) VALUES(2005, 10);


/*usa_pista*/
INSERT INTO usa_pista(idpista, idvuelo, t_salid_pista, t_llegada_pista) VALUES(01,01,'2021-03-2 10:30:00','2021-03-2 11:45:00');
INSERT INTO usa_pista(idpista, idvuelo, t_salid_pista, t_llegada_pista) VALUES(02,01,'2021-03-2 12:30:00','2021-03-2 12:45:00');
INSERT INTO usa_pista(idpista, idvuelo, t_salid_pista, t_llegada_pista) VALUES(11,01,'2021-03-2 13:30:00','2021-03-2 13:45:00');
INSERT INTO usa_pista(idpista, idvuelo, t_salid_pista, t_llegada_pista) VALUES(12,01,'2021-03-2 14:30:00','2021-03-2 14:45:00');

/*ubicacion_vuelo*/

INSERT INTO ubicacion_vuelo(idvuelo, idubicacion,marca_tiempo) VALUES(1,1,'2021-03-2 10:32:05');
INSERT INTO ubicacion_vuelo(idvuelo, idubicacion,marca_tiempo) VALUES(2,2,'2021-03-2 12:02:05');
INSERT INTO ubicacion_vuelo(idvuelo, idubicacion,marca_tiempo) VALUES(3,3,'2021-03-2 14:42:05');
INSERT INTO ubicacion_vuelo(idvuelo, idubicacion,marca_tiempo) VALUES(4,4,'2021-03-2 22:38:05');

/*estado_vuelo*/

INSERT INTO estado_vuelo(idestado, idvuelo,marca_tiempo) VALUES(1,1,'2021-03-2 10:32:05');
INSERT INTO estado_vuelo(idestado, idvuelo,marca_tiempo) VALUES(2,2,'2021-03-2 13:42:05');
INSERT INTO estado_vuelo(idestado, idvuelo,marca_tiempo) VALUES(3,3,'2021-03-2 14:02:05');
INSERT INTO estado_vuelo(idestado, idvuelo,marca_tiempo) VALUES(4,4,'2021-03-2 22:32:05');

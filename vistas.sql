/*Crear 2 vistas (CREATE VIEW). Elaborar 2 consultas que usen las vistas. Entregar las 
vistas y consultas en un fichero de texto vistas.sql*/


/*1a pareja de view y consulta*/

/*Vuelos que salen de la terminal 1*/
CREATE VIEW vuelos_terminal_1 AS 
SELECT *
FROM vuelo
WHERE salida_terminal= 1;

/*Vuelos que salen de la terminal 1 ordenados por puerta de inicio*/
SELECT id_vuelo, inicio_puerta, destino_puerta 
FROM vuelos_terminal_1 
ORDER BY inicio_puerta;


/*2a pareja de view y consulta*/

/*Todos los estados que estan ok de los aviones*/
CREATE VIEW estado_ok AS 
SELECT *
FROM estado
WHERE descripcion='OK';

/**/
-- id_estado que estan okay:


SELECT id_estado 
FROM estado_ok;
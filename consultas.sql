/*CONSULTAS P1---------------------------------------------------------------------------------------*/

/*CONSULTA 1* • Al menos una consulta SELECT que involucre 2 o más tablas.*/

/*Avion que usa cada piloto*/


/*SELECT id_avion, id_piloto
FROM piloto, avion, usa_avion
WHERE piloto.id_piloto= usa_avion.idpiloto AND
      avion.id_avion=usa_avion.idavion;*/



/*CONSULTA 2* • Al menos una consulta SELECT que involucre una operación para tratar atributos de
tipo cadena de caracteres, usando % y CONCAT.*/

/*Ubicacion de los aviones modelo boeing*/

/*SELECT avion.modelo, CONCAT(ubicacion.latitud, " ", ubicacion.longitud, " ",ubicacion.altitud) AS Coordenadas
FROM avion, ubicacion_vuelo, vuelo, ubicacion
WHERE avion.id_avion=vuelo.idavionv AND
      vuelo.id_vuelo=ubicacion_vuelo.idvuelo AND
      ubicacion_vuelo.idubicacion=ubicacion.id_ubicacion AND
      modelo LIKE '%boeing%';*/




/*CONSULTA 3* Al menos una consulta SELECT que use las operaciones GROUP BY y HAVING, y
alguna función a agregación sobre atributo: COUNT, AVG, MAX, etc.*/

/*numero de vuelos que salen de Madrid y tienen como avion un modelo Boeing*/

/*SELECT COUNT(vuelo.id_vuelo)
FROM vuelo, avion
WHERE avion.id_avion=vuelo.idavionv AND
      vuelo.salida_terminal=1 
GROUP BY avion.modelo
HAVING avion.modelo='boeing';*/



/*CONSULTA 4*  Una consulta UPDATE.*/ 

/*Cambiamos el modelo de un avion en concreto a General Dynamics*/
 
/*UPDATE avion 
SET id_avion = 2001, modelo= 'General Dynamics' 
WHERE id_avion = '2001'; */
 
 
 
 
 
 
/*CONSULTA 5* Una consulta DELETE.*/ 
 
/*DELETE FROM avion WHERE modelo='boeing';  */

/*CONSULTAS P3----------------------------------------------------------------------------------------------*/

/*CONSULTA 1 ALL/ANY*/
/*Todos los vuelos*/

SELECT id_ubicacion
FROM ubicacion
WHERE altitud > ALL
	(SELECT altitud
    FROM ubicacion
	WHERE longitud = 52
    );

/*CONSULTA 2 (NOT) IN*/
/*Selecciona los modelos de avión que no se están usando en los vuelos*/

SELECT modelo
FROM avion
WHERE id_avion NOT IN
(SELECT idavionv
FROM vuelo);

/*CONSULTA 3 GROUP BY de dos o más atributos*/
/*Numero de aviones agrupados por modelo y terminal   */

SELECT salida_terminal,inicio_puerta,COUNT(vuelo.id_vuelo) AS numeroDeAviones
FROM vuelo

GROUP BY salida_terminal, inicio_puerta
ORDER BY salida_terminal, inicio_puerta

/*CONSULTA 4 (NOT) EXISTS único*/
/*Vuelos cuya altitud es mayor que 70*/

SELECT idvuelo
FROM ubicacion_vuelo
WHERE 
NOT EXISTS (
SELECT *
FROM ubicacion
WHERE idubicacion=id_ubicacion and altitud > 70);

/*CONSULTA 5 NOT EXISTS “doble” anidado*/
/*Aviones que han aterrizado en todas las terminales */

SELECT id_avion
FROM avion
WHERE NOT EXISTS (
	SELECT * -- vuelos que NO tienen terminal
	FROM terminal
	WHERE NOT EXISTS (
		SELECT *
		FROM vuelo
		WHERE  vuelo.idavionv = avion.id_avion AND
		       vuelo.salida_terminal = terminal.id_terminal));






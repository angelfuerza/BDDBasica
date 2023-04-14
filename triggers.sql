/*Implementar 2 triggers con una lógica interna relativamente compleja (p.e., usando
variables e instrucciones IF, involucrando varias tablas, etc.). Uno de ellos ha de
dispararse al realizar un UPDATE y ha de usar valores NEW, mientras que el otro ha de
dispararse al realizar un INSERT o DELETE y ha de usar valores OLD. Proporcionar y
probar operaciones INSERT/UPDATE/DELETE para activar la ejecución de los
triggers. Entregar los triggers y operaciones en un fichero de texto triggers.sql.*/





/*TRIGGER 1* INSERT valores NEW*/

/* dispararse al realizar un update y ha de usar valores new*/
/*Comprueba que idvuelo no sea negativo, en ese caso pone todo a NULL*/

DELIMITER //
CREATE TRIGGER trigger_id_vuelo
BEFORE INSERT ON vuelo FOR EACH ROW
BEGIN
IF NEW.id_vuelo < 0 THEN

	SET NEW.llegada_terminal = NULL;
	SET NEW.salida_terminal = NULL;
	SET NEW.inicio_puerta = NULL;
	SET NEW.destino_puerta = NULL;
	SET NEW.timestamp_llegadas = NULL;
	SET NEW.timestamp_salidas = NULL;
	SET NEW.timestamp_inicia = NULL;
	SET NEW.timestamp_acaba = NULL;

END IF;
END //
DELIMITER ;

/*Trigger 2*/
UPDATE estado
SET codigo_estado = 1

DELIMITER //

CREATE TRIGGER trigger_estado
BEFORE UPDATE ON estado FOR EACH ROW
BEGIN

	IF old.codigo_estado > 1  THEN

		SET NEW.descripcion = 'error_registrado';
        
    END IF;
END //
DELIMITER ;
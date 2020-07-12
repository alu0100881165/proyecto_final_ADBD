CREATE OR REPLACE FUNCTION cita_es_recepcionista() RETURNS trigger AS
$$
BEGIN
	IF NOT EXISTS (SELECT * FROM recepcionista where dni=(SELECT substring(current_user from 2))::INTEGER) THEN
		RAISE EXCEPTION 'El usuario no es un recepcionista';
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;
/***/
CREATE TRIGGER cita_before_insert
BEFORE INSERT ON cita
FOR EACH ROW
EXECUTE PROCEDURE cita_es_recepcionista();

/********************/

CREATE OR REPLACE FUNCTION diagnostico_es_doctor() RETURNS trigger AS
$$
BEGIN
	IF NOT EXISTS (select * from Doctor where Dni=(SELECT substring(current_user from 2))::INTEGER) THEN
		RAISE EXCEPTION 'El usuario no es un doctor';
    	END IF;
    	
    	RETURN NEW;
	
END;
$$
LANGUAGE plpgsql;

/***/

CREATE TRIGGER diagnostico_before_insert
BEFORE INSERT ON diagnostico
FOR EACH ROW
EXECUTE PROCEDURE diagnostico_es_doctor();

CREATE OR REPLACE FUNCTION cita_tipo() RETURNS trigger AS
$$
BEGIN
	IF(NEW.tipo='Enfermeria') THEN
		INSERT INTO cita_enfermeria(id_cita, dni_enfermera) VALUES(NEW.id_cita, (SELECT dni FROM enfermera ORDER BY RANDOM() LIMIT 1));
		
	ELSIF(NEW.tipo='Intervencion') THEN
		INSERT INTO cita_intervencion(id_cita, dni_doctor) VALUES(NEW.id_cita, (SELECT dni FROM doctor ORDER BY RANDOM() LIMIT 1));
		INSERT INTO enfermera_cita_intervencion(id_cita, dni_enfermera) VALUES(NEW.id_cita, (SELECT dni FROM enfermera ORDER BY RANDOM() LIMIT 1));
		INSERT INTO cita_revision(id_cita, dni_doctor) VALUES(NEW.id_cita, (SELECT dni_doctor FROM cita_intervencion WHERE id_cita=NEW.id_cita));
		INSERT INTO cita(id_cita, cip, fecha_entrada, fecha_salida, descripcion, tipo) VALUES((NEW.id_cita + 1), NEW.cip, NOW() + interval '1 week', NOW() + interval '1 week', 'Revision', 'Revision');
																		
	ELSIF(NEW.tipo='Consulta') THEN
		INSERT INTO cita_consulta(id_cita, dni_doctor) VALUES(NEW.id_cita, (SELECT dni FROM doctor WHERE dni = (SELECT dni_doctor_cabecera FROM paciente WHERE cip=NEW.cip)));
	
	END IF;
	
	IF(SELECT current_user = 'usuario') THEN
		INSERT INTO recepcionista_cita(id_cita,dni_recepcionista,motivo,fecha) VALUES(NEW.id_cita,11111111,'Nueva cita', NOW());
	ELSE
		INSERT INTO recepcionista_cita(id_cita,dni_recepcionista,motivo,fecha) VALUES(NEW.id_cita,(SELECT substring(current_user from 2))::INTEGER,'Nueva cita', NOW());
	END IF;
	
	
	RETURN NEW;
	
END;
$$
LANGUAGE plpgsql;

/***/

CREATE TRIGGER cita_after_insert
AFTER INSERT ON cita
FOR EACH ROW
EXECUTE PROCEDURE cita_tipo();

/********************/

CREATE OR REPLACE FUNCTION habitacion_asignar_enfermera() RETURNS trigger AS
$$
BEGIN
	INSERT INTO enfermera_habitacion(id_habitacion, dni_enfermera) VALUES(NEW.id_habitacion, (SELECT dni FROM enfermera ORDER BY RANDOM() LIMIT 1));
	RETURN NEW;
	
END;
$$
LANGUAGE plpgsql;

/***/

CREATE TRIGGER habitacion_after_insert
AFTER INSERT ON habitacion
FOR EACH ROW
EXECUTE PROCEDURE habitacion_asignar_enfermera();

/********************/

CREATE OR REPLACE FUNCTION paciente_control_habitacion() RETURNS trigger AS
$$
BEGIN
/* Trigger que controle que el paciente que se está insertando no tenga asignada una habitación ya del mismo tipo */
	IF EXISTS (SELECT cip FROM paciente_habitacion WHERE cip=NEW.cip AND id_habitacion IN (SELECT id_habitacion FROM habitacion WHERE tipo='Dormitorio')) THEN
		RAISE EXCEPTION 'El paciente ya tiene una habitación asignada';
        
/* Trigger que controle que la habitación no esté llena */
	ELSEIF(SELECT COUNT(*) AS cnt FROM paciente_habitacion GROUP BY id_habitacion HAVING id_habitacion=NEW.id_habitacion AND id_habitacion IN (SELECT id_habitacion FROM habitacion WHERE tipo='Dormitorio')) >= 2 THEN
		RAISE EXCEPTION 'El dormitorio ya está lleno';
	END IF;
	
	RETURN NEW;
	
END;
$$
LANGUAGE plpgsql;

/***/

CREATE TRIGGER paciente_habitacion_before_insert
BEFORE INSERT ON paciente_habitacion
FOR EACH ROW
EXECUTE PROCEDURE paciente_control_habitacion();

/********************/

CREATE OR REPLACE FUNCTION paciente_set_medico() RETURNS trigger AS
$$
BEGIN
	IF (NEW.Dni_doctor_cabecera IS NULL) THEN
		NEW.Dni_doctor_cabecera = (SELECT dni FROM doctor ORDER BY RANDOM() LIMIT 1);
    	END IF;
    	
    	RETURN NEW;
	
END;
$$
LANGUAGE plpgsql;

/***/

CREATE TRIGGER paciente_before_insert
BEFORE INSERT ON paciente
FOR EACH ROW
EXECUTE PROCEDURE paciente_set_medico();

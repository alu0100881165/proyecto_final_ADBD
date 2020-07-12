-- -----------------------------------------------------
-- Create roles with passwords
-- -----------------------------------------------------
CREATE ROLE usuario WITH LOGIN CREATEDB ENCRYPTED PASSWORD '1234';
CREATE ROLE r11111111 WITH LOGIN ENCRYPTED PASSWORD '1234';
CREATE ROLE d66666666 WITH LOGIN ENCRYPTED PASSWORD '1234';
CREATE ROLE e20202020 WITH LOGIN ENCRYPTED PASSWORD '1234';

-- -----------------------------------------------------
-- Give privileges to usuario
-- -----------------------------------------------------
GRANT CONNECT ON DATABASE hospital TO usuario;
GRANT USAGE ON SCHEMA public TO usuario;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO usuario;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO usuario;

-- -----------------------------------------------------
-- Give privileges to other users
-- -----------------------------------------------------
GRANT CONNECT ON DATABASE hospital TO r11111111;
GRANT ALL PRIVILEGES ON TABLE cita TO r11111111;
GRANT ALL PRIVILEGES ON TABLE paciente TO r11111111;
GRANT ALL PRIVILEGES ON TABLE recepcionista_cita TO r11111111;
GRANT ALL PRIVILEGES ON TABLE cita_enfermeria TO r11111111;
GRANT ALL PRIVILEGES ON TABLE cita_intervencion TO r11111111;
GRANT ALL PRIVILEGES ON TABLE cita_revision TO r11111111;
GRANT ALL PRIVILEGES ON TABLE cita_consulta TO r11111111;
GRANT ALL PRIVILEGES ON TABLE enfermera_cita_intervencion TO r11111111;
GRANT SELECT ON TABLE doctor TO r11111111;
GRANT SELECT ON TABLE enfermera TO r11111111;

GRANT CONNECT ON DATABASE hospital TO d66666666;
GRANT ALL PRIVILEGES ON TABLE diagnostico TO d66666666;
GRANT ALL PRIVILEGES ON TABLE tratamiento TO d66666666;
GRANT SELECT ON TABLE paciente TO d66666666;
GRANT SELECT ON TABLE cita_intervencion TO d66666666;
GRANT SELECT ON TABLE enfermera_cita_intervencion TO d66666666;
GRANT SELECT ON TABLE cita_revision TO d66666666;
GRANT SELECT ON TABLE cita_consulta TO d66666666;

GRANT CONNECT ON DATABASE hospital TO e20202020;
GRANT SELECT ON TABLE paciente TO e20202020;
GRANT SELECT ON TABLE cita_intervencion TO e20202020;
GRANT SELECT ON TABLE enfermera_cita_intervencion TO e20202020;
GRANT SELECT ON TABLE cita_enfermeria TO e20202020;
GRANT SELECT ON TABLE habitacion TO e20202020;
GRANT SELECT ON TABLE enfermera_habitacion TO e20202020;
GRANT SELECT ON TABLE paciente_habitacion TO e20202020;
GRANT SELECT ON TABLE diagnostico TO e20202020;
GRANT SELECT ON TABLE tratamiento TO e20202020;

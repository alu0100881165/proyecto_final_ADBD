-- -----------------------------------------------------
-- Switch to database
-- -----------------------------------------------------
\c hospital

-- -----------------------------------------------------
-- Table Recepcionista
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Recepcionista (
  Dni INT NOT NULL,
  Nombre VARCHAR(60) NOT NULL,
  Sexo VARCHAR(1) NOT NULL,
  Telefono INT NOT NULL,
  Email VARCHAR(45) NOT NULL,
  Direccion VARCHAR(60) NOT NULL,
  Salario INT NOT NULL,
  PRIMARY KEY (Dni));
  

-- -----------------------------------------------------
-- Table Doctor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Doctor (
  Dni INT NOT NULL,
  Nombre VARCHAR(60) NOT NULL,
  Sexo VARCHAR(1) NOT NULL,
  Telefono INT NOT NULL,
  Email VARCHAR(45) NOT NULL,
  Direccion VARCHAR(60) NOT NULL,
  Salario INT NOT NULL,
  Tipo VARCHAR(45) NOT NULL,
  PRIMARY KEY (Dni));


-- -----------------------------------------------------
-- Table Enfermera
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Enfermera (
  Dni INT NOT NULL,
  Nombre VARCHAR(60) NOT NULL,
  Sexo VARCHAR(1) NOT NULL,
  Telefono INT NOT NULL,
  Email VARCHAR(45) NOT NULL,
  Direccion VARCHAR(60) NOT NULL,
  Salario INT NOT NULL,
  PRIMARY KEY (Dni));


-- -----------------------------------------------------
-- Table Paciente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Paciente (
  Cip VARCHAR(14) NOT NULL,
  Nombre VARCHAR(60) NOT NULL,
  Sexo VARCHAR(1) NOT NULL,
  Direccion VARCHAR(60) NOT NULL,
  Id_seguro VARCHAR(18) NULL,
  Telefono INT NOT NULL,
  Contacto_emergencia INT NOT NULL,
  Fecha_nacimiento DATE NOT NULL,
  Dni_Recepcionista INT NOT NULL REFERENCES Recepcionista(Dni) ON DELETE NO ACTION ON UPDATE CASCADE,
  Dni_doctor_cabecera INT REFERENCES Doctor(Dni) ON DELETE NO ACTION ON UPDATE CASCADE,
  PRIMARY KEY (Cip));


-- -----------------------------------------------------
-- Table Cita
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cita (
  Id_cita INT NOT NULL,
  Cip VARCHAR(14) NOT NULL REFERENCES Paciente(Cip) ON DELETE NO ACTION ON UPDATE CASCADE,
  Fecha_entrada TIMESTAMP NOT NULL,
  Fecha_salida TIMESTAMP NULL,
  Descripcion VARCHAR(100) NOT NULL,
  Tipo VARCHAR(45) NOT NULL,
  PRIMARY KEY (Id_cita));


-- -----------------------------------------------------
-- Table Habitacion
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Habitacion (
  Id_habitacion INT NOT NULL,
  Tipo VARCHAR(45) NOT NULL,
  PRIMARY KEY (Id_habitacion));


-- -----------------------------------------------------
-- Table Paciente_Habitacion
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Paciente_Habitacion (
  Cip VARCHAR(14) NOT NULL REFERENCES Paciente(Cip) ON DELETE NO ACTION ON UPDATE CASCADE,
  Id_habitacion INT NOT NULL REFERENCES Habitacion(Id_habitacion) ON DELETE NO ACTION ON UPDATE CASCADE,
  Fecha_salida TIMESTAMP NOT NULL,
  PRIMARY KEY (Cip, Id_habitacion));


-- -----------------------------------------------------
-- Table Recepcionista_Cita
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Recepcionista_Cita (
  Id_cita INT NOT NULL REFERENCES Cita(Id_cita) ON DELETE NO ACTION ON UPDATE CASCADE,
  Dni_recepcionista INT NOT NULL REFERENCES Recepcionista(Dni) ON DELETE NO ACTION ON UPDATE CASCADE,
  Motivo VARCHAR(45) NOT NULL,
  Fecha TIMESTAMP NOT NULL,
  PRIMARY KEY (Id_cita, Dni_recepcionista));


-- -----------------------------------------------------
-- Table Enfermera_Habitacion
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Enfermera_Habitacion (
  Id_habitacion INT NOT NULL REFERENCES Habitacion(Id_habitacion) ON DELETE NO ACTION ON UPDATE CASCADE,
  Dni_enfermera INT NOT NULL REFERENCES Enfermera(Dni) ON DELETE NO ACTION ON UPDATE CASCADE,
  PRIMARY KEY (Id_habitacion));


-- -----------------------------------------------------
-- Table Cita_enfermeria
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cita_enfermeria (
  Id_cita INT NOT NULL REFERENCES Cita(Id_cita) ON DELETE NO ACTION ON UPDATE CASCADE,
  Dni_Enfermera INT NOT NULL REFERENCES Enfermera(Dni) ON DELETE NO ACTION ON UPDATE CASCADE,
  PRIMARY KEY (Id_cita));


-- -----------------------------------------------------
-- Table Cita_intervencion
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cita_intervencion (
  Id_cita INT NOT NULL REFERENCES Cita(Id_cita) ON DELETE NO ACTION ON UPDATE CASCADE,
  Dni_doctor INT NOT NULL REFERENCES Doctor(Dni) ON DELETE NO ACTION ON UPDATE CASCADE,
  PRIMARY KEY (Id_cita));


-- -----------------------------------------------------
-- Table Enfermera_Cita_intervencion
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Enfermera_Cita_intervencion (
  Id_cita INT NOT NULL REFERENCES Cita(Id_cita) ON DELETE NO ACTION ON UPDATE CASCADE,
  Dni_enfermera INT NOT NULL REFERENCES Enfermera(Dni) ON DELETE NO ACTION ON UPDATE CASCADE,
  PRIMARY KEY (Id_cita, Dni_enfermera));


-- -----------------------------------------------------
-- Table Cita_revision
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cita_revision (
  Id_cita INT NOT NULL REFERENCES Cita(Id_cita) ON DELETE NO ACTION ON UPDATE CASCADE,
  Dni_doctor INT NOT NULL REFERENCES Doctor(Dni) ON DELETE NO ACTION ON UPDATE CASCADE,
  PRIMARY KEY (Id_cita));


-- -----------------------------------------------------
-- Table Cita_consulta
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cita_consulta (
  Id_cita INT NOT NULL REFERENCES Cita(Id_cita) ON DELETE NO ACTION ON UPDATE CASCADE,
  Dni_doctor INT NOT NULL REFERENCES Doctor(Dni) ON DELETE NO ACTION ON UPDATE CASCADE,
  PRIMARY KEY (Id_cita));


-- -----------------------------------------------------
-- Table Diagnostico
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Diagnostico (
  Id_diagnostico INT NOT NULL,
  Cip VARCHAR(14) NOT NULL REFERENCES Paciente(Cip) ON DELETE NO ACTION ON UPDATE CASCADE,
  Dni_Doctor INT NOT NULL REFERENCES Doctor(Dni) ON DELETE NO ACTION ON UPDATE CASCADE,
  Descripcion VARCHAR(200) NOT NULL,
  Fecha TIMESTAMP NOT NULL,
  PRIMARY KEY (Id_diagnostico));
  
  
-- -----------------------------------------------------
-- Table Tratamiento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Tratamiento (
  Id_tratamiento INT NOT NULL,
  Id_diagnostico INT NOT NULL REFERENCES Diagnostico(Id_diagnostico) ON DELETE NO ACTION ON UPDATE CASCADE,
/*  UNIQUE(Id_tratamiento, Id_diagnostico), */
  PRIMARY KEY (Id_tratamiento, Id_diagnostico));

-- -----------------------------------------------------
-- Table Medicamento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Medicamento (
  Codigo INT NOT NULL,
  Nombre VARCHAR(45) NOT NULL,
  Posologia VARCHAR(45) NOT NULL,
  PRIMARY KEY (Codigo));
  

-- -----------------------------------------------------
-- Table Medicamento_Tratamiento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Medicamento_Tratamiento (
  Codigo_medicamento INT NOT NULL REFERENCES Medicamento(Codigo) ON DELETE NO ACTION ON UPDATE CASCADE,
  Id_tratamiento INT NOT NULL,
  Id_diagnostico INT NOT NULL,
  Dosis VARCHAR(60) NOT NULL,
  PRIMARY KEY (Codigo_medicamento, Id_tratamiento, Id_diagnostico),
  FOREIGN KEY (Id_tratamiento, Id_diagnostico) references Tratamiento(Id_tratamiento, Id_diagnostico) ON DELETE NO ACTION ON UPDATE CASCADE);

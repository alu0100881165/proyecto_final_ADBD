-- -----------------------------------------------------
-- Data for table Recepcionista
-- -----------------------------------------------------
INSERT INTO Recepcionista (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario) VALUES (11111111, 'Enrique Lora', 'H', 611111111, 'enrique@gmail.com', 'Rúa Vázquez, 267, Ático 8º', 14000);
INSERT INTO Recepcionista (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario) VALUES (22222222, 'Leonor Laguna', 'M', 611111111, 'leonor@gmail.com', 'Ruela Pablo, 4, 71º C', 14000);
INSERT INTO Recepcionista (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario) VALUES (33333333, 'Manel Carrero', 'H', 611111111, 'manel@gmail.com', 'Calle Miguel Ángel, 880, Bajos', 14000);
INSERT INTO Recepcionista (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario) VALUES (44444444, 'Maria Mercedes', 'M', 611111111, 'maria@gmail.com', 'Praza Lucas, 974, 3º A', 14000);
INSERT INTO Recepcionista (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario) VALUES (55555555, 'Vidal Mendez', 'H', 611111111, 'vidal@hotmail.com', 'Paseo Samaniego, 7, 1º F', 14000);


-- -----------------------------------------------------
-- Data for table Doctor
-- -----------------------------------------------------
INSERT INTO Doctor (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario, Tipo) VALUES (66666666, 'Alvaro Medrano', 'H', 611111111, 'alvaro@gmail.com', 'Calle Miguel Ángel, 366, 3º A', 36000, 'Permanente');
INSERT INTO Doctor (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario, Tipo) VALUES (77777777, 'Aitana Revilla', 'M', 611111111, 'aitana@gmail.com', 'Plaça Ander, 0, Bajo 2º', 36000, 'Permanente');
INSERT INTO Doctor (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario, Tipo) VALUES (88888888, 'Benjamin Barreiro', 'H', 611111111, 'benjamin@gmail.com', 'Carrer Nil, 476, 08º F', 36000, 'Permanente');
INSERT INTO Doctor (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario, Tipo) VALUES (99999999, 'Baltasar Alvarado', 'H', 611111111, 'baltasar@gmail.com', 'Ronda Cisneros, 065, Bajos', 36000, 'Practicas');
INSERT INTO Doctor (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario, Tipo) VALUES (10101010, 'Elisabeth Ojeda', 'M', 611111111, 'elisabeth@gmail.com', 'Camino Alba, 078, 8º F', 36000, 'Visitante');


-- -----------------------------------------------------
-- Data for table Paciente
-- -----------------------------------------------------
INSERT INTO Paciente (Cip, Nombre, Sexo, Direccion, Id_seguro, Telefono, Contacto_emergencia, Fecha_nacimiento, Dni_Recepcionista) VALUES ('11111111111111', 'Piedad Carrillo', 'M', 'Plaza Tirado, 35, 16º D', '123412341234123412', 611111111, 622222222, '1962/03/14', 11111111);
INSERT INTO Paciente (Cip, Nombre, Sexo, Direccion, Id_seguro, Telefono, Contacto_emergencia, Fecha_nacimiento, Dni_Recepcionista) VALUES ('22222222222222', 'Jesus Martinez', 'H', 'Paseo Aragón, 50, Bajos', NULL, 611111111, 622222222, '1972/09/29', 11111111);
INSERT INTO Paciente (Cip, Nombre, Sexo, Direccion, Id_seguro, Telefono, Contacto_emergencia, Fecha_nacimiento, Dni_Recepcionista) VALUES ('33333333333333', 'Saida Sampedro', 'M', 'Avenida Miguel, 846, 47º 4º', '567856785678567856', 611111111, 622222222, '1986/11/10', 11111111);
INSERT INTO Paciente (Cip, Nombre, Sexo, Direccion, Id_seguro, Telefono, Contacto_emergencia, Fecha_nacimiento, Dni_Recepcionista) VALUES ('44444444444444', 'Juan David Asensio', 'H', 'Camino Gabriela, 6, 13º A', NULL, 611111111, 622222222, '1998/05/04', 11111111);
INSERT INTO Paciente (Cip, Nombre, Sexo, Direccion, Id_seguro, Telefono, Contacto_emergencia, Fecha_nacimiento, Dni_Recepcionista) VALUES ('55555555555555', 'Tatiana Peral', 'M', 'Calle Alejandra, 15, 7º 6º', NULL, 611111111, 622222222, '1979/01/12', 11111111);


-- -----------------------------------------------------
-- Data for table Enfermera
-- -----------------------------------------------------
INSERT INTO Enfermera (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario) VALUES (20202020, 'Joaquina Mosquera', 'H', 611111111, 'joaquina@gmail.com', 'Ruela Pau, 222, 7º A', 25000);
INSERT INTO Enfermera (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario) VALUES (30303030, 'Jesus Afonso', 'M', 611111111, 'jesus@gmail.com', 'Plaça Valentina, 76, 1º B', 25000);
INSERT INTO Enfermera (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario) VALUES (40404040, 'Carmen Maria Ordoñez', 'H', 611111111, 'carmen@gmail.com', 'Carrer José, 799, Bajos', 25000);
INSERT INTO Enfermera (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario) VALUES (50505050, 'Evaristo Lago', 'M', 611111111, 'evaristo@gmail.com', 'Ronda Otero, 245, 6º 5º', 25000);
INSERT INTO Enfermera (Dni, Nombre, Sexo, Telefono, Email, Direccion, Salario) VALUES (60606060, 'Avelina Paz', 'H', 611111111, 'avelina@gmail.com', 'Camino Lara, 110, 0º E', 25000);


-- -----------------------------------------------------
-- Data for table Habitacion
-- -----------------------------------------------------
INSERT INTO Habitacion (Id_habitacion, Tipo) VALUES (1, 'Dormitorio');
INSERT INTO Habitacion (Id_habitacion, Tipo) VALUES (2, 'Dormitorio');
INSERT INTO Habitacion (Id_habitacion, Tipo) VALUES (3, 'Dormitorio');
INSERT INTO Habitacion (Id_habitacion, Tipo) VALUES (4, 'Dormitorio');
INSERT INTO Habitacion (Id_habitacion, Tipo) VALUES (5, 'Dormitorio');
INSERT INTO Habitacion (Id_habitacion, Tipo) VALUES (6, 'Quirofano');
INSERT INTO Habitacion (Id_habitacion, Tipo) VALUES (7, 'Quirofano');
INSERT INTO Habitacion (Id_habitacion, Tipo) VALUES (8, 'Quirofano');
INSERT INTO Habitacion (Id_habitacion, Tipo) VALUES (9, 'Enfermeria');
INSERT INTO Habitacion (Id_habitacion, Tipo) VALUES (10, 'Enfermeria');


-- -----------------------------------------------------
-- Data for table Paciente_Habitacion
-- -----------------------------------------------------
INSERT INTO Paciente_Habitacion (Cip, Id_habitacion, Fecha_salida) VALUES ('11111111111111', 1, '2020-06-15 10:00:00');
INSERT INTO Paciente_Habitacion (Cip, Id_habitacion, Fecha_salida) VALUES ('22222222222222', 1, '2020-06-15 10:00:00');
INSERT INTO Paciente_Habitacion (Cip, Id_habitacion, Fecha_salida) VALUES ('33333333333333', 2, '2020-06-15 10:00:00');
INSERT INTO Paciente_Habitacion (Cip, Id_habitacion, Fecha_salida) VALUES ('44444444444444', 6, '2020-06-15 10:00:00');
INSERT INTO Paciente_Habitacion (Cip, Id_habitacion, Fecha_salida) VALUES ('55555555555555', 9, '2020-06-15 10:00:00');
-- -----------------------------------------------------
-- Data for Table Cita
-- -----------------------------------------------------
-- INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (,,'2020-08-22 17:10:25','','');
INSERT INTO cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (1,11111111111111,'2020-07-23 19:10:25','Dolor pecho','Enfermeria');
INSERT INTO cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (2,11111111111111,'2020-08-24 17:10:25','Dolor abdominal','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (3,22222222222222,'2020-09-29 17:10:25','Dermatologia','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (4,22222222222222,'2020-10-30 17:10:25','Curas','Enfermeria');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (5,33333333333333,'2020-07-27 17:10:25','Donar sangre','Enfermeria');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (6,33333333333333,'2020-09-29 17:10:25','Podologo','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (7,44444444444444,'2020-07-28 17:10:25','Dolor en la pierna','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (8,44444444444444,'2020-08-30 17:10:25','Ginecologia','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (9,55555555555555,'2020-07-27 17:10:25','Dolor de cabeza','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (10,55555555555555,'2020-09-30 17:10:25','Curas','Enfermeria');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (11,11111111111111,'2020-10-1 17:10:25','Estomatologo','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (12,22222222222222,'2020-10-2 17:10:25','Curas','Enfermeria');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (13,33333333333333,'2020-11-15 17:10:25','Dolor de cabeza','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (14,44444444444444,'2020-12-7 17:10:25','Dolor en los pies','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (15,55555555555555,'2020-11-8 17:10:25','Curas','Enfermeria');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (16,11111111111111,'2020-12-17 17:10:25','Dermatologia','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (17,22222222222222,'2020-12-20 17:10:25','Curas','Enfermeria');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (18,33333333333333,'2020-12-24 17:10:25','Malestar','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (19,44444444444444,'2020-12-28 17:10:25','Urologo','Consulta');
INSERT INTO Cita (Id_cita,Cip,Fecha_entrada,Descripcion,Tipo) VALUES (20,44444444444444,'2020-12-29 17:10:25','Apendicitis','Intervencion');
-- -----------------------------------------------------
-- Data for Table Diagnosticos
-- -----------------------------------------------------
-- INSERT INTO Diagnostico(Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES(<{Id_diagnostico: }>,<{Cip: }>,<{Dni_Doctor: }>,<{Descripcion: }>,<{Fecha: }>);
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (1,11111111111111,66666666,'El paciente tiene un dolor leve en el pecho dado que posiblemente padezca asma suministrar oxigeno para mejorar su respiración','2020-07-23 19:10:25');
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (2,22222222222222,77777777,'Despues de analizar un lunar que le preopaba al paciente resulto no ser maligno','2020-09-29 17:10:25');
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (3,33333333333333,88888888,'El paciente presenta dos ojos de gallo que procedimos a estirparle de inmediato','2020-09-29 17:10:25');
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (4,44444444444444,99999999,'El paciente tiene un fuerte dolor en la pierna debido a una fisura en la tibia, se le recomienda reposo absoluto y calmantes','2020-07-28 17:10:25');
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (5,44444444444444,10101010,'La paciente es portadora del virus del papiloma humano, se le proporcionan instrucciones para disminuir sus efectos','2020-07-28 17:10:25');
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (6,55555555555555,66666666,'El paciente tiene dolor de cabeza debido a una pequeña contusion','2020-08-30 17:10:25');
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (7,11111111111111,77777777,'El paciente tiene un exeso de acido en el estomago debido a su dieta','2020-10-1 17:10:25');
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (8,33333333333333,88888888,'El paciente tiene dolor de cabeza seguramente debido a que es propenso a sufrir migrañas','2020-11-15 17:10:25');
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (9,44444444444444,99999999,'El paciente presenta sintomas de problemas de circulación','2020-12-7 17:10:25');
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (10,11111111111111,10101010,'El paciente tiene una pequeña berruga benigna','2020-12-17 17:10:25');
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (11,33333333333333,66666666,'El paciente presenta un mal estar en general debido a sus malos habitos, le receto un calmante para al menos ayudarlo a dormir','2020-12-24 17:10:25');
INSERT INTO diagnostico (Id_diagnostico,Cip,Dni_Doctor,Descripcion,Fecha) VALUES (12,44444444444444,77777777,'Tras examinar al paciente no presenta indicios de portar ninguna ets se le recomienda realizarce un analisis de sangre para estar completamente seguros','2020-12-28 17:10:25');


-- -----------------------------------------------------
-- Data for Table Medicamento
-- -----------------------------------------------------
-- INSERT INTO Medicamento(Codigo,Nombre,Posologi­a)VALUES(<{Codigo: }>,<{Nombre: }>,<{Posologi­a: }>);
INSERT INTO medicamento(Codigo,Nombre,Posologia)VALUES(078722513,'oxigeno','Inhación (gas medicinal)');
INSERT INTO medicamento(Codigo,Nombre,Posologia)VALUES(078722514,'sulfadiazina de plata','Crema: 1%, en envase de 500mg');
INSERT INTO medicamento(Codigo,Nombre,Posologia)VALUES(078722515,'ibuprofeno','Comprimidos: 200 mg;400 mg');
INSERT INTO medicamento(Codigo,Nombre,Posologia)VALUES(078722516,'clotrimazol','Comprimidos vaginales: 100mg; 500mg');
INSERT INTO medicamento(Codigo,Nombre,Posologia)VALUES(078722517,'hexacianoferrato','Polvo para administración oral');
INSERT INTO medicamento(Codigo,Nombre,Posologia)VALUES(078722518,'carbón activado','Polvo');
INSERT INTO medicamento(Codigo,Nombre,Posologia)VALUES(078722519,'paracetamol','Comprimidos: 100-500 mg');

-- -----------------------------------------------------
-- Data for Table Tratamiento
-- -----------------------------------------------------
--INSERT INTO Tratamiento(Id_tratamiento,Id_diagnostico) VALUES(<{Id_tratamiento: }>,<{Id_diagnostico: }>);
INSERT INTO tratamiento(Id_tratamiento,Id_diagnostico) VALUES(1,1);
INSERT INTO tratamiento(Id_tratamiento,Id_diagnostico) VALUES(2,3);
INSERT INTO tratamiento(Id_tratamiento,Id_diagnostico) VALUES(3,4);
INSERT INTO tratamiento(Id_tratamiento,Id_diagnostico) VALUES(4,5);
INSERT INTO tratamiento(Id_tratamiento,Id_diagnostico) VALUES(5,6);
INSERT INTO tratamiento(Id_tratamiento,Id_diagnostico) VALUES(6,7);
INSERT INTO tratamiento(Id_tratamiento,Id_diagnostico) VALUES(7,9);
INSERT INTO tratamiento(Id_tratamiento,Id_diagnostico) VALUES(8,10);

-- -----------------------------------------------------
-- Data for Table Medicamento_Tratamiento
-- -----------------------------------------------------
-- INSERT INTO medicamento_tratamiento(Codigo_medicamento,Id_tratamiento,Id_diagnostico,Dosis)VALUES(<{Codigo_medicamento: }>,<{Id_tratamiento: }>,<{Id_diagnostico}>,<{Dosis: }>);
INSERT INTO medicamento_tratamiento (Codigo_medicamento,Id_tratamiento,Id_diagnostico,Dosis) VALUES (078722513,1,1,'Suministro continuo de oxigeno');
INSERT INTO medicamento_tratamiento (Codigo_medicamento,Id_tratamiento,Id_diagnostico,Dosis) VALUES (078722514,2,3,'2 veces al día durante 2 semanas');
INSERT INTO medicamento_tratamiento (Codigo_medicamento,Id_tratamiento,Id_diagnostico,Dosis) VALUES (078722519,3,4,'1 comprimido cada vez que sienta dolor');
INSERT INTO medicamento_tratamiento (Codigo_medicamento,Id_tratamiento,Id_diagnostico,Dosis) VALUES (078722516,4,5,' Aplicar la crema antes de dormir durante 1 mes');
INSERT INTO medicamento_tratamiento (Codigo_medicamento,Id_tratamiento,Id_diagnostico,Dosis) VALUES (078722515,5,6,'Tomar 1 comprimido cada 8 horas');
INSERT INTO medicamento_tratamiento (Codigo_medicamento,Id_tratamiento,Id_diagnostico,Dosis) VALUES (078722518,6,7,'Despues de cada comida durante 2 meses');
INSERT INTO medicamento_tratamiento (Codigo_medicamento,Id_tratamiento,Id_diagnostico,Dosis) VALUES (078722517,7,9,' Tomar 1 vez cada 2 dias tomar hasta la proxima consulta');
INSERT INTO medicamento_tratamiento (Codigo_medicamento,Id_tratamiento,Id_diagnostico,Dosis) VALUES (078722514,8,10,'Aplicar 2 veces al dia hasta que la berruga desaparezca');

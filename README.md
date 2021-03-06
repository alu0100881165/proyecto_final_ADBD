# Proyecto final de Administración y Diseño de Bases de Datos

En este readme se recogen los pasos a seguir para poder montar la base de datos de un hospital, hacer una carga de datos y realizar unas consultas de prueba.

## Resumen de la actividad

El proyecto consiste en desarrollar una base de datos desde cero, pasando por las distintasa fases de desarrollo. Escribir un supuesto práctico, realizar un análisis de requisitos, crear el modelo conceptual, lógico y objeto relacional, e implementar la base de datos en PostgreSQL.

## Documentos
[Modelo conceptual](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Modelo_conceptual/ERE.pdf)

[Modelo lógico Relaciopnal](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Modelo_logico/GrafoRelacional.pdf)

[Modelo Lógico Objeto-Relacional](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Modelo_objeto_relacional/ASIClases.pdf)

[Generación de Código](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Scripts_creacion/ScriptCreation.pdf)

[Carga de datos](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Scripts_creacion/CSI8.pdf)

## Instalación de PostgreSQL
Para instalar el Gestor de Bases de Datos PostgreSQL en una máquina Ubuntu, debemos seguir los siguientes pasos:

1. Importar la clave GPG para los paquetes PostgreSQL:

   > sudo apt-get install wget ca-certificates
   > wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
2. Añadimos el repositorio al nuestro sistemas:

   > sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/` lsb_release -cs`-pgdg main ">> /etc/apt/sources.list.d/pgdg.list'
3. Actualizamos el sistema e instalamos PostgreSQL:

   > sudo apt-get update
   > sudo apt-get install postgresql postgresql-contrib

## Creación de la base de datos
Nos logueamos como superusuario de PostgreSQL:
   > sudo su - postgres
  
Y entramos en PostgreSQL:
   > psql
  
Creamos la base de datos con el nombre "hospital":
   > CREATE DATABASE hospital;
   
Salimos utilizando:
   >\q
   
## Creación de las tablas
Como superusuario, debemos utilizar el script llamado "hospital_tablas.sql" para crear las tablas. Para ello, primero debemos descargarnos el script, que se encuentra dentro de la carpeta llamada "Scripts_creacion" de este repositorio. Una vez descargado, los movemos a la siguiente hubicación:
   > mv hospital_tablas.sql /var/lib/postgresql/
    
Y lo importamos utilizando el siguiente comando:
   > psql hospital < hospital_tablas.sql
    
## Creación de usuarios
Como superusuario, debemos utilizar el script llamado "hospital_usuarios.sql" para crear las tablas. Para ello, primero debemos descargarnos el script, que se encuentra dentro de la carpeta llamada "Scripts_creacion" de este repositorio. Una vez descargado, los movemos a la siguiente hubicación:
   > mv hospital_usuarios.sql /var/lib/postgresql/
   
Y lo importamos utilizando el siguiente comando:
   > psql hospital < hospital_usuarios.sql
   
   
## Permitir hacer login en la base de datos
Por defecto, el fichero de configuración de PostgreSQL hace que a la hora de conectarse a la base de datos, se hace login con un usuario del sistema. Por tanto, si no existe el usuario creado en nuestro sistema Ubunto, nos dará un error y no podremos conectarnos. En este momento, ya podemos salir de la cuenta de superusuario de PostgreSQL, ya que no nos hará falta más, y para solucionar este problema, deberemos ir editar el siguiente archivo:
   > sudo vi /etc/postgresql/12/main/pg_hba.conf*

Bebemos modificar en todas las líneas la última columna, de tal forma que cambiemos aquellas que ponen "peer" por "md5".

Y por último, reiniciamos el servidor de PostgreSQL:
   > sudo service postgresql restart


## Creación de los triggers o disparadores
Para crear los triggers, nos deberemos descargar el script llamado "hospital_trigger.sql", que se encuentra dentro de la carpeta llamada "Scripts_creacion" de este repositorio. Y lo importamos utilizando el siguiente comando:
   > psql hospital < hospital_trigger.sql
   
## Carga de datos
Nos deberemos descargar el script llamado "hospital_insert.sql", que se encuentra dentro de la carpeta llamada "Scripts_creacion" de este repositorio. Y lo importamos utilizando el siguiente comando:
   > psql hospital < hospital_insert.sql

## Segunda creación de triggers o disparadores
Existen 2 triggers, que controlan los usuarios que insertan datos en dos tablas. Por tanto si los añadimos junto con el resto de triggers, antes de realizar la carga de datos, esta daría un error. Por ello, se separaron en otro script llamado "hospital_triggers2.sql", que descargaremos de la carpeta "Scripts_creacion", e importaremos a la base de datos:
   > psql hospital < hospital_triggers2.sql
   
## Conclusión
Una vez seguidos todos estos pasos, habremos montado la base de datos sin ningún tipo de problema.

## Capturas de pantalla de la creación de la base de datos

*Fig. 1: Creación de las tablas*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/crear_tablas.png)

*Fig. 2: Creación de los usuarios*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/crear_usuarios.png)

*Fig. 3: Creación de los triggers*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/crear_trigger1.png)

*Fig. 4: Carga de datos*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/carga_datos.png)

*Fig. 5: Adición de los últimos triggers*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/crear_trigger2.png)

## Capturas de pantalla pruebas de las consultas de prueba

*Fig. 1: Selección de la tabla cita*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/select_cita.png)

*Fig. 2: Inserción en la tabla paciente*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/insert_paciente.png)

*Fig. 3: Resultado de la inserción, se asigna automáticamente el doctor*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/insert_paciente_resultado.png)

*Fig. 4: Fallo al insertar en la tabla cita con el usuario "d66666666".*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/insert_fallo.png)

*Fig. 5: Inserción en la tabla cita con el usuario "r11111111"*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/insert_bien_1.png)

*Fig. 6: Inserción en la tabla cita con el usuario "r11111111"*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/insert_bien_2.png)

*Fig. 7: Insert en la tabla paciente_habitacion*

![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/insert_paciente_habitacion.png)

# Proyecto final de Administración y Diseño de Bases de Datos

En este readme se recogen los pasos a seguir para poder montar la base de datos de un hospital, hacer una carga de datos y realizar unas consultas de prueba.

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

Y debemos modificar en todas las líneas la última columna, de tal forma que cambiemos aquellas que ponen "peer" por "md5".


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
Una vez seguidos todos estos apsos, habremos montado la base de datos sin ningún tipo de problema.

## Capturas de pantalla de la creación de tablas
![alt text](https://github.com/alu0100881165/proyecto_final_ADBD/blob/master/Capturas/crear_tablas.png)

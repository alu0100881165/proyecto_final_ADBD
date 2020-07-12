# Proyecto final de Administración y Diseño de Bases de Datos

En este readme se recogen los pasos a seguir para poder montar la base de datos de un hospital, hacer una carga de datos y realizar unas consultas de prueba.

## Instalación de PostgreSQL
Para isntalar el Gestor de Bases de Datos PostgreSQL en una máquina Ubuntu, debemos seguir los siguientes pasos:

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

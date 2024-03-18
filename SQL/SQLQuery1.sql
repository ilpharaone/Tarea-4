--Comentarios
/*
SQL = Structure query languaje == Lenguaje de consulta estructurado
Estructura y lectura

DBA = Database Administator

DDL = Data Definition languaje (create, drop, truncate)

DML = Data manipulation languaje (select, insert, delete, update)

DCL = Data control languaje( grant, revoke)

--Crear base de datos*/

create database UPIFC
use UPIFC
--Para eliminiar la base seria con drop database--
--2 Crear tablas--

create table jugador
(
	id int,
	nombre varchar(50),
    edad int
)

create table entrenador
(
	id int primary key identity(1,1),
	nombre varchar(50),
	titulos varchar(150)
)

--Ingreso de registros

insert into Jugador(id, nombre, edad) values(1, 'Kevin Chamorro', 25)
insert into Jugador(id, nombre, edad) values(2, 'Leonel Moreira', 34)

--Consulta de registros

select id, nombre, edad from jugador
select nombre from jugador
select * from jugador where edad = 25

--Actualizar

update jugador set edad = 24 where id = 2 
select * from jugador 
select * from entrenador
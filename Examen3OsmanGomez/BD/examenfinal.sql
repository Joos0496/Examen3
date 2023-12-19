Create database Examen3osmangomez
go
use Examen3osmangomez
go

Create table Menu
(
Numen varchar (50) not null,
correo varchar (50) not null,
Nombre varchar (50) not null,
edad varchar (50) not null,
Constraint PK_idmenu primary key (ID),
)
go

Create table Partipoliticos
(
id_partido int primary key,
PLN varchar (50),
PUSC varchar (50),
PAC varchar (50),
description text
)
go

CREATE PROCEDURE [dbo].[INGRESAR]
   @Numen VARCHAR(50),
   @Correo VARCHAR(50),
   @Nombre varchar (50),
   @edad varchar (50),
 AS
   BEGIN 
     INSERT INTO  usuarios(Nombre, Correoele, Telefono) VALUES (@Numen,@Correo,@Edad,@Nombre)
   END
GO


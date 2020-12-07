use Prueba1;

create table productos(
productoID int primary key not null,
producto varchar(50)not null);

create table modelo(
modeloID int primary key not null, 
productoID int not null,
modelo varchar(50)not null,
CONSTRAINT fk_productos FOREIGN KEY (productoID) REFERENCES productos (productoID));


create table procesoEx(
procesox int primary key,
proceso varchar(50)not null
);


create table proceso(
procesoID int primary key not null,
modeloID int not null,
procesox int not null,
CONSTRAINT fk_procesoEx FOREIGN KEY (procesox) REFERENCES procesoEx (procesox),
CONSTRAINT fk_modelo FOREIGN KEY (modeloID) REFERENCES modelo (modeloID));

--drop table Asignaciones;
--drop procedure insertar;

create table Asignaciones(
id int primary key not null,
lp int not null,
CONSTRAINT fk_lineasproduccion FOREIGN KEY (lp) REFERENCES lineasproduccion (lp),
productoID int not null,
CONSTRAINT fk_producto FOREIGN KEY (productoID) REFERENCES productos (productoID),
modeloID int not null,
CONSTRAINT fk_modelos FOREIGN KEY (modeloID) REFERENCES modelo (modeloID),
proceso nvarchar(20),
cantidad int not null,
fecha datetime2
);

-----------------------------------------------------------------------------------------------------

select * from asignaciones;

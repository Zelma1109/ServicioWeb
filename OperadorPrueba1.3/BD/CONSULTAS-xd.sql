select * from Productos;
select * from modelo;
select * from proceso;
select * from procesoEx;

----------------------------------------------------------------------------------------------
drop Asignaciones


select * from Asignaciones;


---------------------------------------------------------------------------------------------------------------------
insert into Asignaciones(producto, modelo, proceso, cantidad, fecha) values (2,1,1001,'123',23,GETDATE());
--procedimientos--

CREATE PROCEDURE insertar
@lp int,
@productoID int,
@modeloID int,
@procesoID int,
@cantidad int
AS
BEGIN
insert into Asignaciones(lp, productoID, modeloID, procesoID, cantidad, fecha)
values (@lp, @productoID, @modeloID, @procesoID, @cantidad, GETDATE())
end
GO
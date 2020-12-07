
								--LLENADO DE DATOS A LAS TABLAS CORRESPONDIENTES
----------------------------------------------------------------------------------------------------------------------
			
			--PRODUCTOS
----------------------------------------------------------------------------------------------------------------------
INSERT INTO producto (productoID, producto)VALUES(1,'Bolsas');
INSERT INTO producto (productoID, producto)VALUES(2,'Chamarras');
INSERT INTO producto (productoID, producto)VALUES(3,'Cuadros');
INSERT INTO producto (productoID, producto)VALUES(4,'Guantes');
INSERT INTO producto (productoID, producto)VALUES(5,'Mangas');
INSERT INTO producto (productoID, producto)VALUES(6,'Pecheras');
INSERT INTO producto (productoID, producto)VALUES(7,'Polainas');
INSERT INTO producto (productoID, producto)VALUES(8,'Solapas');
----------------------------------------------------------------------------------------------------------------------

			--MODELO
----------------------------------------------------------------------------------------------------------------------
--BOLSAS
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(1001,1,'Bolsa');
--CHAMARRAS
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(2001,2,'Chamarra');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(2002,2,'Chamarra con extensión');
--CUADROS
INSERT INTO modelos(modeloID, productoID, modelo) VALUES(3001,3,'Cuadros 4');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(3002,3,'Cuadros 8');
--GUANTES 
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4001,4,'Aluminizado normal 33');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4002,4,'Aluminizado Reforzado 33');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4003,4,'Aluminizado Reforzado 45');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4004,4,'Aluminizado Reforzado 60');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4005,4,'Aluminzado Normal 45');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4006,4,'Apicultor');

INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4007,4,'Argonero # 12 con tira');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4008,4,'Argonero # 12 Normal');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4009,4,'Argonero #10 Con tira');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4010,4,'Argonero #10 Normal');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4011,4,'Argonero combinado');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4012,4,'Carnaza con mono');

INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4013,4,'Carnaza con Parche');

INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4014,4,'Carnaza corto');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4015,4,'Carnaza Corto 5 uñas');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4016,4,'Carnaza de perico y cuerno');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4017,4,'Carnaza Largo');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4018,4,'Carnaza largo 2 uñas');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4019,4,'Combinado corto');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4020,4,'Combinado corto p/mocha');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4021,4,'Congelación');

INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4022,4,'Congelación HERDEZ');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4023,4,'Doble palma');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4024,4,'Dorso Aluminizado');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4025,4,'Gte Piel moldura de carnaza');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4026,4,'Guantaleta');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4027,4,'Minero');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4028,4,'Mustang');

INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4029,4,'Mustang todo de piel con cartera de piel');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4030,4,'Operador');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4031,4,'Operador con tira');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4032,4,'Operador económico');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4033,4,'Pemex');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4034,4,'Soldador Insulado Taiwan');

INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4035,4,'Taiwan con refuerzo');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4036,4,'Termico Reforzado');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(4037,4,'Carnaza corto económico');

--MANGAS  
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(5001,5,'Mangas');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(5002,5,'Mangas Aluminizadas');
--PECHERAS 
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(6001, 6,'Pechera');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(6002, 6,'Pechera reforzada');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(6003, 6,'Pecheras Aluminizadas');
--POLAINAS 
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(7001,7,'Polaina Aluminizada');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(7002,7,'Polaina c/contactel');
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(7003,7,'Polaina tira');

--SOLAPAS 
INSERT INTO modelos (modeloID, productoID, modelo) VALUES(8001, 8, 'Solapa Luminizada');
----------------------------------------------------------------------------------------------------------------------
			--PROCESOS 

----------------------------------------------------------------------------------------------------------------------

--BOLSAS
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(100001,1001,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(100002,1001,'Pespunte');

--CHAMARRAS
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(200001,2001,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(200002,2001,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(200003,2002,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(200004,2002,'Pespunte');

--CUADROS
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(300001,3001,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(300002,3001,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(300003,3002,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(300004,3002,'Pespunte');

--GUANTES

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400001,4001,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400002,4001,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400003,4001,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400004,4002,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400005,4002,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400006,4002,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400007,4003,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400008,4003,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400009,4003,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400010,4004,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400011,4004,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400012,4004,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400013,4005,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400014,4005,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400015,4005,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400016,4006,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400017,4006,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400018,4006,'Pespunte');
-----------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400019,4007,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400020,4007,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400021,4007,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400022,4007,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400023,4007,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400024,4008,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400025,4008,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400026,4008,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400027,4008,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400028,4008,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400029,4009,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400030,4009,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400031,4009,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400032,4009,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400033,4009,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400034,4010,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400035,4010,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400036,4010,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400037,4010,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400038,4010,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400039,4011,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400040,4011,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400041,4011,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400042,4011,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400043,4011,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400044,4012,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400045,4012,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400046,4012,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400047,4012,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400048,4012,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400049,4013,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400050,4013,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400051,4013,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400052,4014,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400053,4014,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400054,4014,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400055,4014,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400056,4014,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400057,4015,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400058,4015,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400059,4015,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400060,4015,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400061,4015,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400062,4016,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400063,4016,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400064,4016,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400065,4016,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400066,4016,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400067,4017,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400068,4017,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400069,4017,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400070,4017,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400071,4017,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400072,4018,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400073,4018,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400074,4018,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400075,4018,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400076,4018,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400077,4019,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400078,4019,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400079,4019,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400080,4019,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400081,4019,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400082,4020,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400083,4020,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400084,4020,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400085,4020,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400086,4020,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400087,4021,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400088,4021,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400089,4021,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400090,4021,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400091,4021,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400092,4022,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400093,4022,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400094,4022,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400095,4023,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400096,4023,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400097,4023,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400098,4023,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400099,4023,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400100,4024,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400101,4025,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400102,4025,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400103,4025,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400104,4025,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400105,4025,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400106,4026,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400107,4026,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400108,4026,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400109,4026,'Dejado para cerrar');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400110,4027,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400111,4027,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400112,4027,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400113,4027,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400114,4027,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400115,4028,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400116,4028,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400117,4028,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400118,4028,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400119,4028,'Pespunte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400120,4028,'Pre-Proceso');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400121,4029,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400122,4029,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400123,4029,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400124,4030,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400125,4030,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400126,4030,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400127,4030,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400128,4030,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400129,4031,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400131,4031,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400132,4031,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400133,4031,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400134,4032,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400135,4032,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400136,4032,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400137,4032,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400138,4032,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400139,4033,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400140,4033,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400141,4033,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400142,4033,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400143,4033,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400144,4034,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400145,4034,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400146,4034,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400147,4034,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400148,4034,'Doblillado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400149,4034,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400150,4035,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400151,4035,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400152,4035,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400153,4036,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400154,4036,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400155,4036,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400156,4036,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400157,4036,'Pespunte');
-------------------------------------------------------------------------------------------------------------
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400158,4037,'Asentado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400159,4037,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400160,4037,'Corte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400161,4037,'Dejado para cerrar');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(400162,4037,'Pespunte');
-------------------------------------------------------------------------------------------------------------

--MANGAS
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(500001,5001,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(500002,5001,'Pespunte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(500003,5001,'Asentado');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(500004,5002,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(500005,5002,'Pespunte');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(500006,5002,'Asentado');

--PECHERAS
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(600001,6001,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(600002,6001,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(600003,6002,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(600004,6002,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(600005,6003,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(600006,6003,'Pespunte');

--POLAINAS
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(700001,7001,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(700002,7001,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(700003,7002,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(700004,7002,'Pespunte');

INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(700005,7003,'Cerrado');
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(700006,7003,'Pespunte');


--SOLAPAS
INSERT INTO procesos (procesoID,modeloID,proceso) VALUES(800001,8001,'Pespunte');


----------------------------------------------------------------------------------------------------------------------


insert into Asignaciones(linea, producto, modelo, proceso, cantidad, fecha) values ('zelma','solapa','aluminizada','1,2,3',23,GETDATE());

Select * from Asignaciones;
------------------------------------

--drop procedure insertar
CREATE PROCEDURE insertar
@linea nvarchar(50),
@producto nvarchar(50),
@modelo nvarchar(50),
@proceso nvarchar(50),
@cantidad int
AS
BEGIN
insert into Asignaciones(linea, producto, modelo, proceso, cantidad, fecha)
values (@linea, @producto, @modelo, @proceso, @cantidad, GETDATE())
end
GO
--------------------------------------------------------------------------------------------------------------------

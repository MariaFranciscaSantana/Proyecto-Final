/****** Nombre: Maria Francisca Santana, Matricula: 18-MIIN-1-016, Seccion: 0541 ******/
/****** Materia: Base De Datos, Maestro: Starling Germosen Reynoso ******/
/****** Universidad Dominicana OYM ******/
/****** Proyecto Final: Fabrica de jeans Maria - Maria jeans ******/


create database Maria_Jeans
use Maria_Jeans

create table Producto
(
  Id_producto int primary key,
  Nombre Varchar(50),
  Precio Unitario int,
  Modeolo Varchar(50)
 )

  insert into Producto(Id_producto,Nombre,Precio Unitario,Modelo) Values(4390,'Jeans de Dama Levanta Cola',1000,'Levanta Cola')
  insert into Producto(Id_producto,Nombre,Precio Unitario,Modelo) Values(8604,'Jeans de Dama Largo Roto',850,'Jeans Roto')
  insert into Producto(Id_producto,Nombre,Precio Unitario,Modelo) Values(8389,'Jeans de Dama Acampanado',1000,'Jeans Acampanado')
  insert into Producto(Id_producto,Nombre,Precio Unitario,Modelo) Values(4937,'Jeans de Dama Acampanado de coolores',1100,'Jeans Acampanado de Colores')
  insert into Producto(Id_producto,Nombre,Precio Unitario,Modelo) Values(4937,'Jeans Short de Dama',650,'Short')
  insert into Producto(Id_producto,Nombre,Precio Unitario,Modelo) Values(4937,'Jeans Short de Dama de colores',550,'Short')
  insert into Producto(Id_producto,Nombre,Precio Unitario,Modelo) Values(2643,'Jeans Bermudas para Caballeros',1000,'Bermudas')
  insert into Producto(Id_producto,Nombre,Precio Unitario,Modelo) Values(8454,'Jeans Largo liso para Caballero',1050,'Jeans Largo Liso')
  insert into Producto(Id_producto,Nombre,Precio Unitario,Modelo) Values(8436,'Jeans Largo Roto para Caballero',850,'Jeans Roto')
  insert into Producto(Id_producto,Nombre,Precio Unitario,Modelo) Values(6703,'Jeans Largo Roto Parcheado para Caballero',1000,'Jeans Parcheado')
  
 select*from Producto


create table Empleados
(
Id_empleado int primary key,
Nombre Varchar(50),
Apellido Varchar(40),
Edad int,
Posicion Varchar(70)
Telefono int,
)

 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400307,'Oscar','Polar',26,'Ingeniero de Procesos','809-203-4239')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400308,'Luis','Lopez',30,'Auditor de calidad','809-604-3339',)
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400309,'Ricardo','Santana ',25,'Finanzas','809-334-7878',)
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400310,'Juan','Liriano',40,'supervisor de Produccion','809-687-5456',)
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400311,'Patricia','Carbajal',34,'Ingeniera Industrial','8299-323-4463')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400312,'Lorena','Castillo',25,'operaria','829-669-3215')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400313,'Altagracia','Javier',50,'Gerente Administrativa','809-987-0012')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400314,'Christopher','Caraballo',35,'Encargado de Mantenimiento de Planta','849-258-6012')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400315,'Maria','Diaz',28,'Conserge','829-202-4011')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400316,'Felipe','Dubal',40,'Recursos Humanos','809-121-3939')

 select*from Empleados


create table Cliente
(
Id_cliente int primary key,
Nombre Varchar(30),
Cedula varchar(13),
Ubicación Varchar(80)
)

insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181215,'Jose Luis','001-3867495-2','Santo Domingo')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(161217,'Alberto','402-3886355-7','Santo Domingo')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(171219,'Ana Julia','223-5267495-3','Santo Domingo')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(191221,'Katherine','223-6543295-4','La Romana')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(141223,'Laura','402-3887608-6','Santo Domingo')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(111225,'Carmen','223-3123495-9','Punta Cana')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(161229,'Yocasta','223-1342495-1','Higuey')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181241,'Luisa','402-3867495-0','La Romana')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(171251,'Leidy','402-3354675-3','Bani')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181253,'Cristina','001-9876545-0','Puerto Plata')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181253,'Cecilia','223-0176545-9','Hato Mayor')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181253,'Cristina','402-4576545-2','Puerto Plata')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181253,'Francisco','001-8976545-5','Dajabon')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181253,'Felipe','223-0476545-7','Barahona')



create table Tipo_de_cliente 
(
Id_tipo_de_cliente int primary key,
Id_client int,
Provincias varchar(25),
Tipo_producto varchar(50),
FOREIGN KEY(Id_client) References Cliente(Id_cliente)
)

insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(1345,9826,'Santo Domingo','jeans de Damas y Caballeros')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(9823,12326,'La Romana','Jeans de Damas')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(7234,34526,'Punta Cana','Jeans de Damas y caballeros')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,91820,'Higuey','Jeans de Damas y Caballeros')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,92320,'Puerto Plata','Jeans de Damas y Caballeros')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,93820,'Dajabon','Jeans de Damas y Caballeros')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,91220,'Barahona','Jeans de Caballeros')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,92820,'Hato Mayor','Jeans de Damas y Caballeros')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,91920,'Bani','Bermudas de Caballos')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,91660,'San Cristobal','Jeans de Damas y Caballeros')

select*from Tipo_de_cliente


select* from Cliente

create table Historial_de_venta
(
Id_historial int primary key,
Producto varchar(50),
Cantidad int,
Fecha date,
Precio int
)

insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2567,'Jeans de Dama Levanta Cola',30,'2021-09-19',30000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(4839,'Jeans de Dama Largo Roto',50,'2021-10-23',42500)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2537,'Jeans de Dama Acampanado',40,'2021-11-24',40000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2564,'Jeans Short de Dama',100,'2021-12-20',65000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2565,'Jeans Bermudas para Caballeros',80,'2022-01-10',80000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2566,'Jeans Largo Liso para Caballeros',150,'2022-02-27',157500)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2568,'Jeans Largo Roto para Caballeros',60,'2022-03-20',51000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2569,'Jeans de Dama Levanta Cola',40,'2022-04-15',40000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(25670,'Jeans Largo Liso para Caballeros',180,'2022-05-30',189000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(24671,'Jeans de Dama Largo Roto',60,'2022-06-28',39000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(24671,'Jeans de Dama levanta Cola',60,'2022-07-28',49000)


select*from Historial_de_venta
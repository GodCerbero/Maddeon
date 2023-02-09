CREATE DATABASE DBCOTIZACIONES

GO

USE DBCOTIZACIONES

GO

create table PROVEEDOR(
IdProveedor int primary key identity,
Documento varchar(50),
Empresa varchar(50),
Correo varchar(50),
Telefono varchar(50),
Estado bit,
FechaCreacion datetime default getdate()
)

go 

create table CLIENTE(
IdCliente int primary key identity,
Documento varchar(50),
Nombre varchar(50),
Empresa varchar(50),
Correo varchar(50),
Telefono varchar(50),
Estado bit,
FechaCreacion datetime default getdate()
)

go

create table USUARIO(
IdUsuario int primary key identity,
Documento varchar(50),
NombreCompleto varchar(50),
Correo varchar(50),
Telefono varchar(50),
Clave varchar(50),
Estado bit,
FechaCreacion datetime default getdate()
)

go

create table CATEGORIA(
IdCategoria int primary key identity,
Descripcion varchar(100),
Estado bit,
FechaCreacion datetime default getdate(),
)

go

create table PRODUCTO(
IdProducto int primary key identity,
IdCategoria int references CATEGORIA(IdCategoria),
Codigo varchar(50),
Nombre varchar(50),
Descripcion varchar(50),
Stock int not null default 0,
PrecioCompra decimal(10,2) default 0,
PrecioVenta decimal(10,2) default 0,
Estado bit,
FechaCreacion datetime default getdate(),
)

go

create table COMPRA(
IdCompra int primary key identity,
IdUsuario int references USUARIO(IdUsuario),
IdProveedor int references PROVEEDOR(IdProveedor),
TipoDocumetno varchar(50),
NumeroDocumento varchar(50),
MontoTotal decimal(10,2),
FechaRegistro datetime default getdate()
)

go 


create table DETALLE_COMPRA(
IdDetalleCompra int primary key identity,
IdCompra int references COMPRA(IdCompra),
IdProducto int references PRODUCTO(IdProducto),
PrecioCompra decimal (10,2),
PrecioVenta decimal (10,2),
Cantidad int,
NumeroDocumento varchar(50),
MontoTotal decimal(10,2),
FechaRegistro datetime default getdate()
)

go

create table VENTA(
IdVenta int primary key identity,
IdUsuario varchar (50),
Id
FechaRegistro datetime default getdate()
)


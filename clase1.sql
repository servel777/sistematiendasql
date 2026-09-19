select @@version as VersionServidor;
select SERVERPROPERTY('ServerName') as NombreServidor

create Database TiendaBD;
Go



create table Categoria(
	IdCategoria int Identity(1,1) primary key,
	Nombre nvarchar(100) not null,
);
go

select * from categoria
insert into categoria(Nombre) values('ropa')
insert into categoria(Nombre) values('calzados')
insert into categoria(Nombre) values('accesorios')

select * from categoria


create table producto(
idProducto int identity(1,1) primary key,
nombre nvarchar(100) not null,
precio decimal (10,2) not null,
stock int not null,
Idcategoria int not null,
Foreign key(Idcategoria) references categoria(Idcategoria)
);
go
insert into producto(Nombre,Precio,stock,Idcategoria) values('camiseta',50.40,50,1)
insert into producto(Nombre,Precio,stock,Idcategoria) values('pantalon',50.40,50,1)
insert into producto(Nombre,Precio,stock,Idcategoria) values('zapatilla',50.40,50,3)
insert into producto(Nombre,Precio,stock,Idcategoria) values('lentes de sol',50.40,50,2)

select * from Producto;
select p.Nombre,p.Precio,c.Nombre from Producto p
inner join Categoria c on p.Idcategoria=c.IdCategoria


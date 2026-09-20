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
insert into producto(Nombre,Precio,stock,Idcategoria) values('tennis',50.40,50,3)
insert into producto(Nombre,Precio,stock,Idcategoria) values('cartera',50.40,10,1)
insert into producto(Nombre,Precio,stock,Idcategoria) values('chaqueta',50.30,50,3)
insert into producto(Nombre,Precio,stock,Idcategoria) values('botas',50.30,5,2)
insert into producto(Nombre,Precio,stock,Idcategoria) values('gorra',50.30,20,2)

select * from Producto;
select p.Nombre,p.Precio,c.Nombre from Producto p
inner join Categoria c on p.Idcategoria=c.IdCategoria

  select * from producto where stock<=5 or Nombre='camiseta'
 select * from producto where stock>=5 or Nombre='camiseta'


 select * from producto
 order by nombre desc


 select * 
 from producto
 where precio>51
 order by precio desc

 --like
 select *
 from producto
 where nombre like '%eta'

 select * from producto where precio>51

 --between
 select *
 from producto
 where precio between 50 and 70


 select * from producto
 where stock between 10 and 50 

 --modificar
 
 select * from producto
 where nombre ='camiseta'

 update producto
 set precio=60.50,
     stock=40
 where nombre='camiseta'

 update producto
 set Idcategoria=2
 where nombre='zapatilla'

  update producto
 set Idcategoria=3
 where nombre='lentes de sol'
 
 select p.idProducto,p.Nombre,p.Precio,p.stock,c.Nombre from Producto p
inner join Categoria c on p.Idcategoria=c.IdCategoria

update producto
set nombre='gafas de sol'
where nombre='camiseta'

--delete
select * from producto
delete producto
where nombre='pantalon'  

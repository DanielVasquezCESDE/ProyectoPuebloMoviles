create database BibliotecaCESDE
use BibliotecaCESDE

create table Usuario (
ID_Usuario int primary key identity (1001,2) not null,
Usuario_Nombre varchar(30) not null,
Usuario_Apellido varchar(30) 
)

create table Autor (
ID_Autor int primary key identity (11,1) not null,
Autor_Nombre varchar(20) not null
)

create table Editorial (
ID_Editorial int primary key identity (105,1) not null,
Editorial varchar(20) not null
)

create table Libro (
Codigo_Libro int primary key identity (111,2) not null,
Titulo_Libro varchar(30) not null,
ID_Editorial int not null, 
foreign key (ID_Editorial) references Editorial (ID_Editorial)
)

create table AutorLibro (
ID_AutorLibro int primary key identity (1111,1) not null,
ID_Autor int not null,
Codigo_Libro int not null, 
foreign key (ID_Autor) references Autor (ID_Autor),
foreign key (Codigo_Libro) references Libro (Codigo_Libro)
)


create table Prestamo (
ID_Usuario int not null,
ID_Autor int not null,
Fecha date not null, 
primary key(ID_Usuario, ID_Autor),
foreign key (ID_Usuario) references Usuario (ID_Usuario),
foreign key (ID_Autor) references Autor (ID_Autor)
)

alter table Libro
add area varchar(30)

drop table Prestamo

create table Prestamo (
ID_Usuario int not null,
Codigo_Libro int not null,
FechaPrestamo date not null, 
FechaDevolucion date not null, 
primary key(ID_Usuario, Codigo_Libro),
foreign key (ID_Usuario) references Usuario (ID_Usuario),
foreign key (Codigo_Libro) references Libro (Codigo_Libro)
)

alter table Libro
add direccion nvarchar(30),
Carrera varchar(30),
FechaNac date, 
telefono varchar(10)

alter table Libro
drop column direccion, Carrera, FechaNac, telefono

alter table Usuario
add direccion nvarchar(30),
Carrera varchar(30),
FechaNac date, 
telefono varchar(10)

alter table Autor
add Nacionalidad nvarchar(30)

insert into Autor (Autor_Nombre, Nacionalidad) 
values ('James Clear', 'Estadounidense'),
('Miguel De Lus', 'Estadounidense'), 
('Erick Larson', 'Estadounidense'),
('Ramalho', 'Brasileño'),
('Murray Spiege', 'Inglés'),
('Priya Spiege', 'Inglesa'),
('Nancy Grreberg', 'Danesa'),
('Daniel Emocion', 'Argentino'),
('Spieldberg', 'Estadounidense'),
('FErnando Vallejo', 'Colombiano')

alter table Usuario
add CorreoElectronico nvarchar(40)
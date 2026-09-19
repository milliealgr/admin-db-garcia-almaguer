create database if not exists ecommerce;
use ecommerce;

-- creación de tablas
create table producto (
    id int primary key not null,
    nombre varchar(100) not null,
    stock int not null,
    check (stock >= 0)
);

create table compras (
    id int primary key not null,
    fecha datetime
);

create table detalle_compra (
    id int primary key not null,
    id_compras int not null,
    id_producto int not null,
    cantidad int not null,
    check (cantidad > 0),

    foreign key (id_compras) references compras(id),
    foreign key (id_producto) references producto(id)
);

create table pagos (
    id int primary key not null,
    id_compras int not null,
    monto int not null,
    check (monto > 0),

    foreign key (id_compras) references compras(id)
);


-- Inserción de datos 
insert into producto (id, nombre, stock) values
(1, 'gansito', 10),
(2, 'vidrio', 25),
(3, 'arroz', 0),
(4, 'zapatos', 8),
(5, 'bufanda', 20);

insert into compras (id, fecha) values
(1, '2026-09-18 10:00:00'),
(2, '2026-09-18 11:00:00'),
(3, '2026-09-18 12:00:00');

insert into detalle_compra (id, id_compras, id_producto, cantidad) values
(1, 1, 1, 2),
(2, 1, 2, 1),
(3, 2, 3, 1),
(4, 3, 4, 2);

insert into pagos (id, id_compras, monto) values
(1, 1, 15000),
(2, 2, 1200),
(3, 3, 4500);
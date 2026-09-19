-- pago inválido

start transaction;

insert into compras (id, fecha)
values (6, now());

update producto
set stock = stock - 1
where id = 4;

insert into detalle_compra (id, id_compras, id_producto, cantidad)
values (6, 6, 4, 1);

insert into pagos (id, id_compras, monto)
values (5, 6, 0);
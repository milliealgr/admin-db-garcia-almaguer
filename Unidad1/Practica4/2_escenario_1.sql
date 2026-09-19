-- comprar gansitos efectivamente

start transaction;

insert into compras (id, fecha)
values (4, now());

update producto
set stock = stock - 2
where id = 1;

insert into detalle_compra (id, id_compras, id_producto, cantidad)
values (5, 4, 1, 2);

insert into pagos (id, id_compras, monto)
values (4, 4, 50);

commit;
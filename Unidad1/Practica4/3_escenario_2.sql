-- comprar gansitos stock insuficiente

start transaction;

insert into compras (id, fecha)
values (5, now());

update producto
set stock = stock - 15
where id = 1;
use garcia_almaguer;

insert into clientes (dni_cliente, nombre_completo, telefono, correo) values
('12345678A', 'Elsa Pato', '52451234', 'elsa.pato@email.com'), 
('23456789B', 'Susana Oria', '72555678', 'susana.oria@email.com'), 
('34567890C', 'Alan Brito', '59012', 'alan.brito@email.com'), 
('45678901D', 'Elvis Tek', '133456', 'elvis.tek@email.com'), 
('56789012E', 'Aquiles Castro', '5557890', 'aquiles.castro@email.com');

insert into mascotas (nombre, especie, raza, fecha_nacimiento, dni_cliente) values
('Shiro', 'Gato', 'Bombay', '2020-05-10', '12345678A'),
('Akira', 'Gato', 'Calico', '2019-03-15', '23456789B'),
('Héctor', 'Perro', 'Pug', '2021-07-20', '34567890C'),
('Sofia', 'Perro', 'Pug', '2018-11-05', '45678901D'),
('Tomasa', 'Perro', 'Pug', '2022-01-30', '56789012E');

insert into veterinarios (dni_veterinario, nombre_completo, especialidad, telefono) values
('11111111A', 'Dr. Armando Bronca', 'Veterinaria General', '912345678'),
('22222222B', 'Dra. Elsa Capunta', 'Cirugia', '923456789'),
('33333333C', 'Dr. Mario Neta', 'Veterinaria General', '934567890'),
('44444444D', 'Dra. Marcia Ana', 'Veterinaria General', '945678901'),
('55555555E', 'Dr. Alejandro King', 'Cirugia', '956789012');

insert into atenciones_medicas (fecha_hora, diagnostico, costo_base, id_mascota, dni_veterinario) values
('2026-08-01 09:00:00', 'Extraccion dental', 900.00, 1, '11111111A'),
('2026-08-02 10:30:00', 'Cirugia de esterilizacion', 2000.00, 2, '33333333C'),
('2026-08-03 11:00:00', 'Extraccion dental', 900.00, 3, '44444444D'),
('2026-08-04 14:00:00', 'Consulta de rutina', 500.00, 4, '55555555E'),
('2026-08-05 16:00:00', 'Cirugia de esterilizacion', 2000.00, 5, '22222222B');

insert into medicamentos (codigo_medicamento, nombre_comercial, laboratorio, precio_unitario) values
('101', 'Paracetamol', 'Laboratorio Guadalajara', 500.00),
('102', 'Ibuprofeno', 'Laboratorio Itzamna', 800.00),
('103', 'Alka Seltzer', 'Laboratorio Molina', 600.00),
('104', 'Loratadina', 'Laboratorio A', 450.00),
('105', 'Hidroxicina', 'Laboratorio Peru', 700.00);

insert into prescripciones (id_atencion, codigo_medicamento, cantidad, indicaciones) values
(1, '101', 10, 'Tomar 1 pastilla cada 8 horas por 5 dias'),
(2, '102', 5, 'Tomar 1 pastilla cada 12 horas por 3 dias'),
(3, '104', 8, 'Tomar 1 pastilla cada 12 horas por 4 dias'),
(4, '105', 6, 'Tomar 1 pastilla cada dia por 6 dias'),
(5, '103', 1, 'Tomar 1 pastilla cada 12 horas por 3 dias');


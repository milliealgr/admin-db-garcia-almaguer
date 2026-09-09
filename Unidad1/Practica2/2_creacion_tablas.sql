use garcia_almaguer;

create table clientes (
    dni_cliente varchar(20) primary key not null,
    nombre_completo varchar(100),
    telefono varchar(20),
    correo varchar(100)
);

create table mascotas (
    id_mascota int primary key not null auto_increment,
    nombre varchar(50),
    especie varchar(50),
    raza varchar(50),
    fecha_nacimiento date,
    dni_cliente varchar(20) not null
);

create table veterinarios (
    dni_veterinario varchar(20) primary key not null,
    nombre_completo varchar(100),
    especialidad varchar(100),
    telefono varchar(20)
);

create table atenciones_medicas (
    id_atencion int primary key not null auto_increment,
    fecha_hora datetime,
    diagnostico varchar(255),
    costo_base decimal(10,2),
    id_mascota int not null,
    dni_veterinario varchar(20) not null
);

create table medicamentos (
    codigo_medicamento int primary key not null,
    nombre_comercial varchar(100),
    laboratorio varchar(100),
    precio_unitario decimal(10,2)
);

create table prescripciones (
    id_prescripcion int primary key not null auto_increment,
    id_atencion int not null,
    codigo_medicamento int not null,
    cantidad int,
    indicaciones varchar(255)
);

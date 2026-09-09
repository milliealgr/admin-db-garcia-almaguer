CREATE DATABASE practica1;
USE practica1;

CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY,
    nombre_usuario VARCHAR(100),
    email_usuario VARCHAR(100)
);

CREATE TABLE libros (
    id_libro INT PRIMARY KEY,
    titulo_libro VARCHAR(200),
    autor_libro VARCHAR(100)
);

CREATE TABLE prestamos (
    id_prestamo INT PRIMARY KEY,
    fecha_prestamo DATE,
    id_usuario INT NOT NULL,
    id_libro INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_libro) REFERENCES libros(id_libro)
);

INSERT INTO usuarios (id_usuario, nombre_usuario, email_usuario) VALUES
(1, 'Ana Gómez', 'ana@email.com'),
(2, 'Carlos Ruíz', 'carlos@email.com');

INSERT INTO libros (id_libro, titulo_libro, autor_libro) VALUES
(1, 'El Principito', 'Antoine de Saint-Exupery'),
(2, 'Cien Años de Soledad', 'Gabriel Garcia Marquez');

INSERT INTO prestamos (id_prestamo, fecha_prestamo, id_usuario, id_libro) VALUES
(5001, '2026-03-01', 1, 1),
(5002, '2026-03-02', 2, 2),
(5003, '2026-03-05', 1, 2);
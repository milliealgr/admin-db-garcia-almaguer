FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=mydatabase

# Declaración explícita de volumen
VOLUME ["/var/lib/mysql"]

COPY 1_creacion_db.sql /docker-entrypoint-initdb.d/
COPY 2_creacion_tablas.sql /docker-entrypoint-initdb.d/
COPY 3_creacion_relaciones.sql /docker-entrypoint-initdb.d/
COPY 4_registros.sql /docker-entrypoint-initdb.d/

EXPOSE 3306 
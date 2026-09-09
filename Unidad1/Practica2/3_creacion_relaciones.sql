use garcia_almaguer;

alter table mascotas
    add constraint fk_mascotas_clientes
    foreign key (dni_cliente)
    references clientes(dni_cliente);

alter table atenciones_medicas
    add constraint fk_atenciones_mascotas
    foreign key (id_mascota)
    references mascotas(id_mascota);

alter table atenciones_medicas
    add constraint fk_atenciones_veterinarios
    foreign key (dni_veterinario)
    references veterinarios(dni_veterinario);

alter table prescripciones
    add constraint fk_prescripciones_atenciones
    foreign key (id_atencion)
    references atenciones_medicas(id_atencion);

alter table prescripciones
    add constraint fk_prescripciones_medicamentos
    foreign key (codigo_medicamento)
    references medicamentos(codigo_medicamento);

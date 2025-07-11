CREATE TABLE usuario (
	id_usuario INTEGER NOT NULL PRIMARY KEY,
	nombre_apellido_usuario TEXT NOT NULL,
	contraseña_usuario TEXT NOT NULL,
	correo_electronico_usuario TEXT NOT NULL,
	fecha_registro_usuario DATE,
	saldo_inicial INTEGER NOT NULL
);

CREATE TABLE meta (
    id_meta INTEGER NOT NULL PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    nombre_meta TEXT NOT NULL,
    fecha_meta DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE mensual (
	id_meta INTEGER NOT NULL PRIMARY KEY,
	fecha_meta_mensual DATE NOT NULL,
	monto_meta_mensual INTEGER NOT NULL,
	monto_actual_mensual INTEGER NOT NULL,
	FOREIGN KEY (id_meta) REFERENCES meta(id_meta)
);

CREATE TABLE anual (
	id_meta INTEGER NOT NULL PRIMARY KEY,
	fecha_meta_anual DATE NOT NULL,
	monto_meta_anual INTEGER NOT NULL,
	monto_actual_anual INTEGER NOT NULL,
	FOREIGN KEY (id_meta) REFERENCES meta(id_meta)
);

CREATE TABLE categoria (
 	id_categoria INTEGER NOT NULL PRIMARY KEY,
 	nombre_categoria TEXT,
 	ingreso_o_gasto_categoria TEXT NOT NULL
);

CREATE TABLE movimiento (
	id_movimiento INTEGER NOT NULL PRIMARY KEY,
	id_usuario INTEGER NOT NULL,
	id_categoria INTEGER NOT NULL,
	monto_movimiento INTEGER NOT NULL,
	descripcion_movimiento TEXT,
	ingreso_o_gasto_movimiento TEXT NOT NULL,
	hora_movimiento TIME NOT NULL,
	fecha_movimiento DATE NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
	FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);


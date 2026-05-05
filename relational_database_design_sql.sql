--Tabla Clientes
CREATE TABLE Clientes (
    id_gobierno VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido_paterno VARCHAR(50) NOT NULL,
    apellido_materno VARCHAR(50),
    fecha_nacimiento DATE,
    sexo VARCHAR(10),
    telefono VARCHAR(20),
    correo VARCHAR(100),
    calle VARCHAR(100),
    numero_exterior VARCHAR(10),
    colonia VARCHAR(100),
    ciudad VARCHAR(50),
    estado VARCHAR(50),
    codigo_postal VARCHAR(10)
);

--Tabla tipos_actividad
CREATE TABLE tipos_actividad (
    id_tipo_actividad SERIAL PRIMARY KEY,
    nombre_tipo VARCHAR(50) NOT NULL
);

--Tabla actividades_cliente
CREATE TABLE actividades_cliente (
    id_actividad SERIAL PRIMARY KEY,
    id_gobierno VARCHAR(20) NOT NULL,
    id_tipo_actividad INT NOT NULL,
    descripcion TEXT NOT NULL,
    fecha_actividad DATE NOT NULL,
    CONSTRAINT fk_cliente
        FOREIGN KEY (id_gobierno)
        REFERENCES Clientes(id_gobierno),
    CONSTRAINT fk_tipo_actividad
        FOREIGN KEY (id_tipo_actividad)
        REFERENCES tipos_actividad(id_tipo_actividad)
);

--Indices
CREATE INDEX idx_clientes_apellido_paterno
ON Clientes(apellido_paterno);

CREATE INDEX idx_clientes_nombre
ON Clientes(nombre);

--Tipos de actividad
INSERT INTO tipos_actividad (nombre_tipo)
VALUES
('Cotización'),
('Visita sitio web'),
('Llamada cliente');


--Clientes prueba
INSERT INTO Clientes (
    id_gobierno, nombre, apellido_paterno, apellido_materno,
    fecha_nacimiento, sexo, telefono, correo,
    calle, numero_exterior, colonia, ciudad, estado, codigo_postal
)
VALUES
('CURP001', 'Ana', 'Lopez', 'Martinez', '1995-03-12', 'Femenino', '2221234567', 'ana@email.com', 'Av. Reforma', '101', 'Centro', 'Puebla', 'Puebla', '72000'),
('CURP002', 'Luis', 'Garcia', 'Hernandez', '1990-08-21', 'Masculino', '2229876543', 'luis@email.com', 'Calle 5 Sur', '22', 'Santiago', 'Puebla', 'Puebla', '72160');

--Actividades de prueba
INSERT INTO actividades_cliente (
    id_gobierno, id_tipo_actividad, descripcion, fecha_actividad
)
VALUES
('CURP001', 1, 'Se generó cotización inicial para el cliente.', '2026-03-18'),
('CURP001', 2, 'El cliente visitó el sitio web en la sección de precios.', '2026-03-19'),
('CURP002', 3, 'Se realizó una llamada de seguimiento.', '2026-03-20');


SELECT * FROM Clientes;
SELECT * FROM tipos_actividad;
SELECT * FROM actividades_cliente;


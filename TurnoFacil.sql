-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-10-18 00:13:59.061

-- tables
-- Table: medica
CREATE TABLE medica (
    especialidad varchar(20) NOT NULL,
    obra_social varchar(10) NOT NULL,
    personal_user varchar(20) NOT NULL,
    secretario_personal_user varchar(20) NOT NULL,
    CONSTRAINT medica_pk PRIMARY KEY (personal_user)
);

-- Table: paciente
CREATE TABLE paciente (
    dni int NOT NULL,
    nombre varchar(20) NOT NULL,
    apellido varchar(20) NOT NULL,
    direccion varchar(20) NOT NULL,
    telefono int NOT NULL,
    email varchar(30) NOT NULL,
    obra_social varchar(10) NULL,
    nro_afiliado int NULL,
    CONSTRAINT paciente_pk PRIMARY KEY (dni)
);

-- Table: personal
CREATE TABLE personal (
    user varchar(20) NOT NULL,
    password varchar(30) NOT NULL,
    tipo int NOT NULL,
    nombre varchar(20) NOT NULL,
    CONSTRAINT personal_pk PRIMARY KEY (user)
);

-- Table: secretario
CREATE TABLE secretario (
    personal_user varchar(20) NOT NULL,
    CONSTRAINT secretario_pk PRIMARY KEY (personal_user)
);

-- Table: turnos
CREATE TABLE turnos (
    paciente_dni int NOT NULL,
    fecha date NOT NULL,
    hora time NOT NULL,
    turno char NOT NULL COMMENT 'turno refiriendose a mañana y tarde
',
    medica_personal_user varchar(20) NOT NULL,
    CONSTRAINT turnos_pk PRIMARY KEY (paciente_dni)
);

-- foreign keys
-- Reference: medica_personal (table: medica)
ALTER TABLE medica ADD CONSTRAINT medica_personal FOREIGN KEY medica_personal (personal_user)
    REFERENCES personal (user);

-- Reference: medica_secretario (table: medica)
ALTER TABLE medica ADD CONSTRAINT medica_secretario FOREIGN KEY medica_secretario (secretario_personal_user)
    REFERENCES secretario (personal_user);

-- Reference: secretario_personal (table: secretario)
ALTER TABLE secretario ADD CONSTRAINT secretario_personal FOREIGN KEY secretario_personal (personal_user)
    REFERENCES personal (user);

-- Reference: turnos_medica (table: turnos)
ALTER TABLE turnos ADD CONSTRAINT turnos_medica FOREIGN KEY turnos_medica (medica_personal_user)
    REFERENCES medica (personal_user);

-- Reference: turnos_paciente (table: turnos)
ALTER TABLE turnos ADD CONSTRAINT turnos_paciente FOREIGN KEY turnos_paciente (paciente_dni)
    REFERENCES paciente (dni);

-- End of file.


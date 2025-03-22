 
 DROP DATABASE  bd_sistema_planilla;
 
CREATE DATABASE bd_sistema_planilla;
USE bd_sistema_planilla;


-- TABLAS PEQUEÑAS PARA LA TABLA TRABJADOR 
CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(30) NOT NULL,
    contrasenia VARCHAR(30) NOT NULL
);

INSERT INTO usuario(usuario, contrasenia)
VALUES("admin", "12345");

CREATE TABLE estadoCivil(
	idEstadoCivil INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(80),
    estado BOOLEAN DEFAULT TRUE
);

-- el valor del id serà el codigo segun el excel
CREATE TABLE nacionalidad(
	idNacionalidad INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(80),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE tipoDocumento(
	idTipoDocumento INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(80),
    descripcionAbreviada VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE via(
	idVia INT PRIMARY KEY AUTO_INCREMENT, 
    descripcion VARCHAR(80),
	estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE zona(
	idZona INT PRIMARY KEY AUTO_INCREMENT, 
    descripcion VARCHAR(80),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE departamentoRegion(
	idDepartamentoRegion INT PRIMARY KEY AUTO_INCREMENT, 
    descripcion VARCHAR(25),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE provincia(
	idProvincia INT PRIMARY KEY AUTO_INCREMENT, 
    descripcion VARCHAR(25),
	idDepartamentoRegion INT,
    FOREIGN KEY (idDepartamentoRegion) REFERENCES departamentoRegion (idDepartamentoRegion)
);
CREATE TABLE ubigeoReniec(
	idUbigeoReniec INT PRIMARY KEY AUTO_INCREMENT, 
    descripcion VARCHAR(25),
    idProvincia INT ,
    FOREIGN KEY (idProvincia) REFERENCES provincia (idProvincia)
);
 
CREATE TABLE ubigeo(
	idUbigeo INT PRIMARY KEY AUTO_INCREMENT, 
    idDepartamentoRegion INT,
    idProvincia INT,
    idUbigeoReniec INT,
    FOREIGN KEY (idDepartamentoRegion) REFERENCES departamentoRegion (idDepartamentoRegion),
    FOREIGN KEY (idProvincia) REFERENCES provincia (idProvincia),
    FOREIGN KEY (idUbigeoReniec) REFERENCES ubigeoReniec (idUbigeoReniec)
);
 
-- TABLAS PEQUEÑAS PARA LA TABLA DATO LABORAL
CREATE TABLE paisEmisorDocumento(
	idPaisEmisorDocumento INT PRIMARY KEY AUTO_INCREMENT, 
    descripcion VARCHAR(80),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE ocupacion(
	idOcupacion  INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE categoriaOcupacion(
	idCategoriaOcupacion  INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE tipoTrabajador(
	idTipoTrabajador  INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
	descripcionAbreviada VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE situacionEducativa(
	idSituacionEducativa  INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
	descripcionAbreviada VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE periodoRemuneracion(
	idPeriodoRemuneracion  INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE tipoContrato(
	idTipoContrato  INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
    descripcionAbreviada VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE tipoPago(
	idTipoPago  INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE regimenLaboral(
	idRegimenLaboral INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
	esPrivado BOOLEAN,
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE situacionLaboral(
	idSituacionLaboral INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
	descripcionAbreviada VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE entidadBancaria(
	idEntidadBancaria INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
	descripcionAbreviada VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE destinoRemuneracion(
	idDestinoRemuneracion INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
	descripcionAbreviada VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE tipoModalidadFormativa(
	idTipoModalidadFormativa INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
	descripcionAbreviada VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE regimenPensionario(
	idRegimenPensionario INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
	descripcionAbreviada VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE ocupacionSectorPrivado(
	idOcupacionSectorPrivado INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
	descripcionAbreviada VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE regimenAseguramientoSalud(
	idRegimenAseguramientoSalud INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
	descripcionAbreviada VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE tipoComprobante(
	idTipoComprobante INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE organizacionSindicalPublico(
	idOrganizacionSindicalPublico INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE entidadesPrestadorasSaludServPropios(
	idEntidadesPrestadorasSaludServPropios INT PRIMARY KEY AUTO_INCREMENT, 
	ruc VARCHAR(20),
    estado BOOLEAN DEFAULT TRUE
);
CREATE TABLE motivoFinPeriodo(
	idMotivoFinPeriodo INT PRIMARY KEY AUTO_INCREMENT, 
	descripcion VARCHAR(80),
	descripcionAbreviada VARCHAR(50)
);
 
 
-- TABLA GRANDE DATO LABORAL
CREATE TABLE datoLaboral(
	idDatoLaboral INT PRIMARY KEY AUTO_INCREMENT,
    discapacidad BOOLEAN,
    esSindicalizado BOOLEAN,
    esAfiliadoEpsServProp BOOLEAN,
    numeroCuenta VARCHAR(25),
    horarioNocturno BOOLEAN,
    jornadaTrabajoMaximo BOOLEAN,
    jornadaTrabajoDescanso BOOLEAN,
    idPaisEmisorDocumento INT,
    idOcupacion INT,
    idCategoriaOcupacion INT,
    idTipoTrabajador INT,
    idSituacionEducativa INT,
    idPeriodoRemuneracion INT,
    idTipoContrato INT,
    idTipoPago INT,
    idRegimenLaboral INT,
    idSituacionLaboral INT,
    idEntidadBancaria INT,
    idDestinoRemuneracion INT,
    idTipoModalidadFormativa INT,
    idRegimenPensionario INT,
    idOcupacionSectorPrivado INT,
    idRegimenAseguramientoSalud INT,
    idOrganizacionSindicalPublico INT,
    idEntidadesPrestadorasSaludServPropios INT,
	FOREIGN KEY (idPaisEmisorDocumento) REFERENCES paisEmisorDocumento (idPaisEmisorDocumento),
	FOREIGN KEY (idOcupacion) REFERENCES ocupacion (idOcupacion),
	FOREIGN KEY (idCategoriaOcupacion) REFERENCES categoriaOcupacion (idCategoriaOcupacion),
	FOREIGN KEY (idTipoTrabajador) REFERENCES tipoTrabajador (idTipoTrabajador),
	FOREIGN KEY (idSituacionEducativa) REFERENCES situacionEducativa (idSituacionEducativa),
	FOREIGN KEY (idPeriodoRemuneracion) REFERENCES periodoRemuneracion (idPeriodoRemuneracion),
	FOREIGN KEY (idTipoContrato) REFERENCES tipoContrato (idTipoContrato),
	FOREIGN KEY (idTipoPago) REFERENCES tipoPago (idTipoPago),
	FOREIGN KEY (idRegimenLaboral) REFERENCES regimenLaboral (idRegimenLaboral),
	FOREIGN KEY (idSituacionLaboral) REFERENCES situacionLaboral (idSituacionLaboral),
	FOREIGN KEY (idEntidadBancaria) REFERENCES entidadBancaria (idEntidadBancaria),
	FOREIGN KEY (idDestinoRemuneracion) REFERENCES destinoRemuneracion (idDestinoRemuneracion),
	FOREIGN KEY (idTipoModalidadFormativa) REFERENCES tipoModalidadFormativa (idTipoModalidadFormativa),
	FOREIGN KEY (idRegimenPensionario) REFERENCES regimenPensionario (idRegimenPensionario),
	FOREIGN KEY (idOcupacionSectorPrivado) REFERENCES ocupacionSectorPrivado (idOcupacionSectorPrivado),
	FOREIGN KEY (idRegimenAseguramientoSalud) REFERENCES regimenAseguramientoSalud (idRegimenAseguramientoSalud),
	FOREIGN KEY (idOrganizacionSindicalPublico) REFERENCES organizacionSindicalPublico (idOrganizacionSindicalPublico),
	FOREIGN KEY (idEntidadesPrestadorasSaludServPropios) REFERENCES entidadesPrestadorasSaludServPropios (idEntidadesPrestadorasSaludServPropios)
);
-- TABLA GRANDE TRABAJADOR
CREATE TABLE trabajador(
	idTrabajador INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(40) NOT NULL,
    apellidoPaterno VARCHAR(30) NOT NULL,
    apellidoMaterno VARCHAR(30) NOT NULL,
    fechaNacimiento DATE,
    telefono VARCHAR(9),
    email VARCHAR(20),
    referencia VARCHAR(255),
    numeroHijosPlanilla VARCHAR(2),
    sexo VARCHAR(15),
    numeroHijosPdt VARCHAR(2),
    numeroDocumento VARCHAR(15),
    estado BOOLEAN DEFAULT TRUE,
    idDatoLaboral INT,
    idEstadoCivil INT,
    idNacionalidad INT,
    idTipoDocumento INT,
    idVia INT,
    idZona INT,
    idUbigeo INT,
    FOREIGN KEY (idDatoLaboral) REFERENCES datoLaboral (idDatoLaboral),
    FOREIGN KEY (idEstadoCivil) REFERENCES estadoCivil (idEstadoCivil),
	FOREIGN KEY (idNacionalidad) REFERENCES nacionalidad (idNacionalidad),
    FOREIGN KEY (idTipoDocumento) REFERENCES tipoDocumento (idTipoDocumento),
    FOREIGN KEY (idVia) REFERENCES via  (idVia),
    FOREIGN KEY (idZona) REFERENCES zona (idZona),
    FOREIGN KEY (idUbigeo) REFERENCES ubigeo (idUbigeo)
);


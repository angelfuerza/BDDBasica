/*tablas.sql*/


create table pista
(
id_pista int,
n_pista int,
primary key(id_pista)
);

create table estado
(
id_estado int,
codigo_estado int,
descripcion varchar(25),
primary key(id_estado)
);

create table terminal
(
id_terminal int,
nombre_terminal varchar(25),
primary key(id_terminal)
);

create table puerta_de_embarque
(
id_puerta int,
pertenece_terminal int,
primera_puerta int,
nombre_puerta varchar(25),
primary key(id_puerta),
foreign key(pertenece_terminal) references terminal(id_terminal) on delete cascade,
foreign key(primera_puerta) references terminal(id_terminal) on delete cascade
);

create table avion
(
id_avion int,
modelo varchar(20),
primary key(id_avion)
);

create table piloto
(
id_piloto int,
primary key(id_piloto)
);

create table ubicacion
(
id_ubicacion int,
latitud int,
longitud int,
altitud int,
primary key(id_ubicacion)
);

create table vuelo
(
id_vuelo int,
idavionv int,
llegada_terminal int,
timestamp_llegadas timestamp,
salida_terminal int,
timestamp_salidas timestamp,
inicio_puerta int,
timestamp_inicia timestamp,
destino_puerta int,
timestamp_acaba timestamp,

primary key(id_vuelo),
foreign key(llegada_terminal) references terminal(id_terminal) on delete cascade,
foreign key(idavionv) references avion(id_avion) on delete cascade,
foreign key(salida_terminal) references terminal(id_terminal) on delete cascade,
foreign key(inicio_puerta) references puerta_de_embarque(id_puerta) on delete cascade,
foreign key(destino_puerta) references puerta_de_embarque(id_puerta) on delete cascade
);

create table estado_vuelo 
(
idestado int,
idvuelo int,
marca_tiempo timestamp,
primary key(idestado,idvuelo),
foreign key(idestado) references estado(id_estado) on delete cascade,
foreign key(idvuelo) references vuelo(id_vuelo)   on delete cascade
);

create table usa_pista 
(
idpista int,
idvuelo int,
t_salid_pista timestamp,
t_llegada_pista timestamp,
primary key(idpista,idvuelo),
foreign key(idpista) references pista(id_pista) on delete cascade,
foreign key(idvuelo) references vuelo(id_vuelo) on delete cascade
);



create table usa_avion 
(
idavion INT,
idpiloto INT,
primary key(idavion,idpiloto),
foreign key(idavion) references avion(id_avion) on delete cascade,
foreign key(idpiloto) references piloto(id_piloto) on delete cascade
);

create table ubicacion_vuelo 
(
idvuelo INT,
idubicacion INT,
marca_tiempo timestamp,
primary key(idvuelo,idubicacion),
foreign key(idvuelo) references vuelo(id_vuelo) on delete cascade,
foreign key(idubicacion) references ubicacion(id_ubicacion) on delete cascade
);
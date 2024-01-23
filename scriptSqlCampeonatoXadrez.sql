CREATE schema campeonatoxadrez;

CREATE table campeonatoxadrez.IDPAIS(
NumeroPais smallint, 
PRIMARY KEY (NumeroPais)
) engine = InnoDB;

#Os países são identificados por numeros consecutivos, segundo a ordem alfabética.
CREATE table campeonatoxadrez.PAIS(
Nome CHAR(255) UNIQUE NOT NULL,
NumClubes smallint,
NumeroPais smallint, 
PRIMARY KEY (NumeroPais),
FOREIGN KEY (NumeroPais) references IDPAIS(NumeroPais) on update cascade on delete cascade
) engine = InnoDB;

CREATE table campeonatoxadrez.PARTICIPANTE(
Nome char(255) UNIQUE NOT NULL,
Endereco char(255) NOT NULL,
Telefone char(255), #criar dominio especifico?? NOT NULL??
Papel char(255) NOT NULL, #criar dominio especifico?? J ou A
NumeroPais smallint,
NumAssociado integer,
foreign key (NumeroPais) references PAIS(NumeroPais) on delete cascade on update cascade,
primary key (NumAssociado)
) engine = InnoDB;


create table campeonatoxadrez.HISTORICO(
Papel char(255) NOT NULL, #criar dominio especifico?? J ou A
NomeCampeonato char(255),
NumAssociado integer,
PRIMARY KEY (NomeCampeonato, NumAssociado),
foreign key (NumAssociado) references PARTICIPANTE(NumAssociado) ON DELETE CASCADE ON UPDATE CASCADE
) engine = InnoDB;

create table campeonatoxadrez.JOGADOR(
Nivel smallint NOT NULL,
NumAssociado integer,
PRIMARY key (NumAssociado),
FOREIGN KEY (NumAssociado) REFERENCES PARTICIPANTE(NumAssociado) ON DELETE CASCADE ON UPDATE CASCADE
) engine = InnoDB;

create table campeonatoxadrez.HOTEL(
NomeHotel char(255) ,
Endereco char(255) UNIQUE NOT NULL,
Telefone char(255), 
primary key(NomeHotel)
) engine = InnoDB;

create table campeonatoxadrez.SALAO(
IdSalao integer,
Capacidade integer NOT NULL, #Quantidade de visitantes que o salao comporta
NomeHotel char(255) not null,
primary key (IdSalao),
FOREIGN KEY (NomeHotel) REFERENCES HOTEL(NomeHotel) ON delete cascade on update cascade
) engine = InnoDB;

create table campeonatoxadrez.MEIOTRANSMISSAO(
Meio char(255),
IdSalao integer,
primary key (Meio, IdSalao),
foreign key (IdSalao) references SALAO(IdSalao) on delete cascade on update cascade
) engine = InnoDB;

create table campeonatoxadrez.HOSPEDAGEM(
NomeHotel char(255),
NumAssociado integer,
DataCheckIn date not null,
DataCheckOut date,
primary key (NomeHotel, NumAssociado),
foreign key (NomeHotel) references Hotel(NomeHotel) ON delete cascade on update cascade,
foreign key (NumAssociado) references PARTICIPANTE(NumAssociado) ON DELETE CASCADE ON UPDATE CASCADE
) engine = InnoDB;

create table campeonatoxadrez.PARTIDA(
EntradasVendidas integer,
Jornada date not null,
CodigoPartida integer,
IdSalao integer not null,
NumArbitro integer not null,
NumJogadorBrancas integer not null,
NumJogadorPretas integer not null,
primary key (CodigoPartida),
foreign key (NumArbitro) references PARTICIPANTE(NumAssociado) ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (NumJogadorBrancas) references jogador(NumAssociado) ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (NumJogadorPretas) references jogador(NumAssociado) ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (IdSalao) references SALAO(IdSalao) ON delete cascade on update cascade
) engine = InnoDB;



create table campeonatoxadrez.MOVIMENTO(
Jogada char(255) not null,
Comentario char(255),
IdMovimento smallint,
CodigoPartida integer,
primary key (IdMovimento, CodigoPartida),
foreign key (CodigoPartida) references PARTIDA(CodigoPartida) ON DELETE CASCADE ON UPDATE CASCADE
) engine = InnoDB;


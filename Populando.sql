# População das tabelas

#Inserção na tabela PAIS:

INSERT INTO campeonatoxadrez.PAIS (Nome, NumClubes, NumeroPais) VALUES ('Brasil', 10, 1);
INSERT INTO campeonatoxadrez.PAIS (Nome, NumClubes, NumeroPais) VALUES ('Noruega', 15, 2);
INSERT INTO campeonatoxadrez.PAIS (Nome, NumClubes, NumeroPais) VALUES ('Estados Unidos', 59, 3);
INSERT INTO campeonatoxadrez.PAIS (Nome, NumClubes, NumeroPais) VALUES ('Índia', 29, 4);
INSERT INTO campeonatoxadrez.PAIS (Nome, NumClubes, NumeroPais) VALUES ('Rússia', 63, 5);
INSERT INTO campeonatoxadrez.PAIS (Nome, NumClubes, NumeroPais) VALUES ('Alemanha', 23, 6);
INSERT INTO campeonatoxadrez.PAIS (Nome, NumClubes, NumeroPais) VALUES ('Japão', 5, 7);

# Inserção de PARTICIPANTE:

INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Krikor Mekhitarian', 'Rua A, 123', '000000000', 'J', 2, 1);
INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Luís Paulo Supi', 'Rua B, 111', '00000001', 'J', 2, 2);
INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Magnus Carlsen', 'Rua D, 114', '00000003', 'J', 6, 3);
INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Hikaru Nakamura', 'Rua E, 115', '00000004', 'J', 3, 4);
INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Bob Fischer', 'Rua F, 116', '00000005', 'J', 3, 5);
INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Viswanathan Anand', 'Rua H, 118', '00000007', 'J', 4, 6);
INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Garry Kasparov', 'Rua J, 119', '00000009', 'J', 7, 7);
INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Anatoly Karpov', 'Rua K, 120', '00000010', 'J', 7, 8);


INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Henrique Mecking', 'Rua S, 128', '00000018', 'A', 2, 9);
INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Paul Morphy', 'Rua T, 129', '00000019', 'A', 3, 10);
INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Boris Spassky', 'Rua W, 132', '00000022', 'A', 7, 11);
INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Mikhail Botvinnik', 'Rua X, 133', '00000023', 'A', 7, 12);
INSERT INTO campeonatoxadrez.PARTICIPANTE (Nome, Endereco, Telefone, Papel, NumeroPais, NumAssociado) VALUES ('Adolf Anderssen', 'Rua AC, 137', '00000027', 'A', 1, 13);

# Inserção em HISTORICO:

INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato Nacional de Xadrez 2020', 1);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato Panamericano de Xadrez 2016', 2);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato Nacional de Xadrez 2014', 3);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato Mundial de Xadrez 2013', 4);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato Mundial de Xadrez 2015', 4);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato Mundial de Xadrez 2017', 4);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato Mundial de Xadrez 2019', 4);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato Mundial Xadrez 1972', 5);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato mundial de Xadrez 1990', 6);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato Mundial Xadrez 1984', 7);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato Mundial Xadrez 1985', 7);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato Mundial Xadrez 1987', 7);
INSERT INTO campeonatoxadrez.HISTORICO (Papel, NomeCampeonato, NumAssociado) VALUES ('J', 'Campeonato mundial da FIDE 1993', 8);


# Inserção em JOGADOR
INSERT INTO campeonatoxadrez.JOGADOR (Nivel, NumAssociado) VALUES (5, 1);
INSERT INTO campeonatoxadrez.JOGADOR (Nivel, NumAssociado) VALUES (4, 2);
INSERT INTO campeonatoxadrez.JOGADOR (Nivel, NumAssociado) VALUES (6, 3);
INSERT INTO campeonatoxadrez.JOGADOR (Nivel, NumAssociado) VALUES (10, 4);
INSERT INTO campeonatoxadrez.JOGADOR (Nivel, NumAssociado) VALUES (10, 5);
INSERT INTO campeonatoxadrez.JOGADOR (Nivel, NumAssociado) VALUES (7, 6);
INSERT INTO campeonatoxadrez.JOGADOR (Nivel, NumAssociado) VALUES (10, 7);
INSERT INTO campeonatoxadrez.JOGADOR (Nivel, NumAssociado) VALUES (9, 8);

#Inserção em HOTEL 

INSERT INTO campeonatoxadrez.HOTEL (NomeHotel, Endereco, Telefone) VALUES ('Hilton', 'Rua CD, nº 123', '16 11111-1111');
INSERT INTO campeonatoxadrez.HOTEL (NomeHotel, Endereco, Telefone) VALUES ('Matsoud Plaza', 'Rua EF, nº 456', '12 222222-1111');
INSERT INTO campeonatoxadrez.HOTEL (NomeHotel, Endereco, Telefone) VALUES ('Ibis Consolação', 'Rua GH, nº 442', '11 222222-3333');
INSERT INTO campeonatoxadrez.HOTEL (NomeHotel, Endereco, Telefone) VALUES ('Bellagio', 'Rua IJ, nº 152', '77 212121-3355');
INSERT INTO campeonatoxadrez.HOTEL (NomeHotel, Endereco, Telefone) VALUES ('MGM Grand Las Vegas', 'Rua KL, nº 763', '77 653465-1235');


#Inserção em SALAO

INSERT INTO campeonatoxadrez.SALAO (IdSalao, Capacidade, NomeHotel) VALUES (1, 50, 'Hilton');
INSERT INTO campeonatoxadrez.SALAO (IdSalao, Capacidade, NomeHotel) VALUES (2, 150, 'Hilton');
INSERT INTO campeonatoxadrez.SALAO (IdSalao, Capacidade, NomeHotel) VALUES (3, 60, 'Matsoud Plaza');
INSERT INTO campeonatoxadrez.SALAO (IdSalao, Capacidade, NomeHotel) VALUES (4, 80, 'Matsoud Plaza');
INSERT INTO campeonatoxadrez.SALAO (IdSalao, Capacidade, NomeHotel) VALUES (5, 30, 'Ibis Consolação');
INSERT INTO campeonatoxadrez.SALAO (IdSalao, Capacidade, NomeHotel) VALUES (6, 200, 'Bellagio');
INSERT INTO campeonatoxadrez.SALAO (IdSalao, Capacidade, NomeHotel) VALUES (7, 320, 'Bellagio');
INSERT INTO campeonatoxadrez.SALAO (IdSalao, Capacidade, NomeHotel) VALUES (8, 520, 'MGM Grand Las Vegas');


# Inserção em MEIOTRANSMISSAO

INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Internet', 1);

INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Rádio', 2);
INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Televisão', 2);
INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Vídeo', 2);

INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Televisão', 3);
INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Vídeo', 3);

INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Televisão', 4);

INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Vídeo', 5);

INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Vídeo', 6);

INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Rádio', 7);
INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Televisão', 7);
INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Vídeo', 7);

INSERT INTO campeonatoxadrez.MEIOTRANSMISSAO (Meio, IdSalao) VALUES ('Televisão', 8);



# Inserindo em HOSPEDAGEM
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Ibis Consolação', 1, '2023-05-01', '2023-07-05');
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Ibis Consolação', 2, '2023-05-03', '2023-07-06');
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Bellagio', 3, '2023-05-29', '2023-07-10');
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Hilton', 4, '2023-05-17', '2023-08-20');
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Hilton', 5, '2023-05-22', '2023-08-18');
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Hilton', 6, '2023-05-19', '2023-08-30');
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Matsoud Plaza', 7, '2023-05-15', '2023-07-27');
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Matsoud Plaza', 8, '2023-04-30', '2023-06-29');

INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Ibis Consolação', 9, '2023-06-30', '2023-07-15');
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Hilton', 10, '2023-05-25', '2023-07-03');
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Matsoud Plaza', 11, '2023-04-23', '2023-07-02');
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Matsoud Plaza', 12, '2023-04-12', '2023-06-08');
INSERT INTO campeonatoxadrez.HOSPEDAGEM (NomeHotel, NumAssociado, DataCheckIn, DataCheckOut) VALUES ('Bellagio', 13, '2023-05-29', '2023-07-15');


# Inserindo em PARTIDA
INSERT INTO campeonatoxadrez.PARTIDA (EntradasVendidas, Jornada, CodigoPartida, IdSalao, NumArbitro,NumJogadorBrancas, NumJogadorPretas) VALUES (50, '2023-05-10', 1, 3, 10,1,8);
INSERT INTO campeonatoxadrez.PARTIDA (EntradasVendidas, Jornada, CodigoPartida, IdSalao, NumArbitro,NumJogadorBrancas, NumJogadorPretas) VALUES (150, '2023-05-15', 2, 2, 11,5,4);
INSERT INTO campeonatoxadrez.PARTIDA (EntradasVendidas, Jornada, CodigoPartida, IdSalao, NumArbitro,NumJogadorBrancas, NumJogadorPretas) VALUES (70, '2023-05-20', 3, 4, 9,7,3);
INSERT INTO campeonatoxadrez.PARTIDA (EntradasVendidas, Jornada, CodigoPartida, IdSalao, NumArbitro,NumJogadorBrancas, NumJogadorPretas) VALUES (120, '2023-05-25', 4, 1, 12,6,3);

INSERT INTO campeonatoxadrez.PARTIDA (EntradasVendidas, Jornada, CodigoPartida, IdSalao, NumArbitro,NumJogadorBrancas, NumJogadorPretas) VALUES (60, '2023-06-12', 5, 3, 9,5,8);
INSERT INTO campeonatoxadrez.PARTIDA (EntradasVendidas, Jornada, CodigoPartida, IdSalao, NumArbitro,NumJogadorBrancas, NumJogadorPretas) VALUES (300, '2023-06-20', 6, 7, 10,3,7);

INSERT INTO campeonatoxadrez.PARTIDA (EntradasVendidas, Jornada, CodigoPartida, IdSalao, NumArbitro,NumJogadorBrancas, NumJogadorPretas) VALUES (520, '2023-07-02', 8, 8, 13,7,5);
INSERT INTO campeonatoxadrez.PARTIDA (EntradasVendidas, Jornada, CodigoPartida, IdSalao, NumArbitro,NumJogadorBrancas, NumJogadorPretas) VALUES (520, '2023-07-02', 7, 1, 13,3,8);



# Inserindo em MOVIMENTO

INSERT INTO campeonatoxadrez.MOVIMENTO (Jogada, Comentario, IdMovimento, CodigoPartida) VALUES ('e4', 'Peão para e4', 1, 1);
INSERT INTO campeonatoxadrez.MOVIMENTO (Jogada, Comentario, IdMovimento, CodigoPartida) VALUES ('Bg2', 'Bispo para g2', 2, 1);
INSERT INTO campeonatoxadrez.MOVIMENTO (Jogada, Comentario, IdMovimento, CodigoPartida) VALUES ('Bxg7', 'Bispo toma em g7', 3, 2);
INSERT INTO campeonatoxadrez.MOVIMENTO (Jogada, Comentario, IdMovimento, CodigoPartida) VALUES ('Dg2', 'Dama em d2', 4, 2);
INSERT INTO campeonatoxadrez.MOVIMENTO (Jogada, Comentario, IdMovimento, CodigoPartida) VALUES ('Dg7+', 'Dama em g7 cheque', 6, 3);
INSERT INTO campeonatoxadrez.MOVIMENTO (Jogada, Comentario, IdMovimento, CodigoPartida) VALUES ('Rh3', 'Rei em h3', 5, 4);
INSERT INTO campeonatoxadrez.MOVIMENTO (Jogada, Comentario, IdMovimento, CodigoPartida) VALUES ('Txf3', 'Torre toma em f3', 6, 5);
INSERT INTO campeonatoxadrez.MOVIMENTO (Jogada, Comentario, IdMovimento, CodigoPartida) VALUES ('fxe3', 'peão toma em e3', 7, 6);
INSERT INTO campeonatoxadrez.MOVIMENTO (Jogada, Comentario, IdMovimento, CodigoPartida) VALUES ('Dd2+', 'Dama em d2 cheque', 8, 7);

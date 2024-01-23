# Resolvendo as consultas e atualizações

# a) Listar os salões (NroId, NomeHotel) onde joga o jogador cujo nome é “Bob Fisher”.
SELECT SALAO.IdSalao, SALAO.NomeHotel
FROM SALAO, PARTIDA 
WHERE SALAO.idSalao = PARTIDA.idSalao and CodigoPartida in (SELECT CodigoPartida
															FROM JOGADA, JOGADOR
                                                            WHERE JOGADA.NumJogador = JOGADOR.NumAssociado and JOGADOR.NumAssociado in (SELECT NumAssociado
																																		FROM PARTICIPANTE
                                                                                                                                        WHERE PARTICIPANTE.Nome = 'Bob Fischer'));
	
														
# b) Listar os árbitros (NumAssoc, NOmeAssoc) que arbitram somente jogos realizados no Hotel “Hilton”.

SELECT NumAssociado, Nome
FROM PARTICIPANTE
WHERE PARTICIPANTE.Papel = 'A' and NumAssociado in (SELECT NumArbitro
													FROM PARTIDA P JOIN SALAO S ON P.idSalao = S.idSalao
                                                    WHERE S.NomeHotel = 'Hilton')  and NumAssociado not in (SELECT NumArbitro
																											FROM PARTIDA P JOIN SALAO S ON P.idSalao = S.idSalao
																											WHERE S.NomeHotel <> 'Hilton');

# c) Listar os salões (NroId, NomeHotel) que não têm “televisão”.

SELECT idSalao, NomeHotel
FROM SALAO
WHERE idSalao not in (SELECT idSalao
					  FROM MEIOTRANSMISSAO
                      WHERE Meio = 'Televisão');


# d) Listar o nome dos árbitros que arbitram jogos em todos os salões localizados no Hotel “Matsoud Plaza”.

SELECT Nome, NumAssociado
FROM PARTICIPANTE
WHERE Papel = 'A' and NumAssociado in (SELECT NumArbitro
					   FROM PARTIDA P JOIN SALAO S ON P.idSalao = S.idSalao
                       WHERE S.NomeHotel = 'Matsoud Plaza'
					   GROUP BY NumArbitro
                       HAVING COUNT(DISTINCT S.idSalao) = (SELECT COUNT(DISTINCT idSalao)
														   FROM SALAO
                                                           WHERE NomeHotel = 'Matsoud Plaza'));
  
# e) Listar os jogos (CodJogo, IdSal) a serem feitos no mês de junhoo de 2023.

SELECT CodigoPartida, IdSalao
FROM PARTIDA
WHERE MONTH(PARTIDA.JORNADA) = 6 and YEAR(PARTIDA.JORNADA) = 2023;

# f) Qual é a quantidade total de jogos a serem arbitrados por “Boris Sparski”?
 
 SELECT COUNT(DISTINCT PARTIDA.CodigoPartida) as 'Numero de partidas apitadas por Boris Spassky'
 FROM PARTIDA
 WHERE NumArbitro in (SELECT NumAssociado
					  FROM PARTICIPANTE
                      WHERE Papel = 'a' and Nome = 'Boris Spassky');
                      
# g) Qual é o país (NumPais, NomePais) com o maior número de participantes? 
#REVISAR
SELECT P.NumeroPais, P.nome
FROM PAIS P JOIN (SELECT PARTICIPANTE.NumeroPais, COUNT(DISTINCT NumAssociado) as QtdeParticipantes
				  FROM PARTICIPANTE
                  GROUP BY NumeroPais
                  ORDER BY QtdeParticipantes DESC
                  LIMIT 1) as SUB ON P.NumeroPais = SUB.NumeroPais;

# h) Listar os jogos (CodJogo) nos quais o jogador “Garry Kasparov” joga com as fichas pretas.

SELECT CodigoPartida
FROM JOGADA
WHERE Cor = 'P' and NumJogador in (SELECT NumAssociado
					 FROM PARTICIPANTE
                     WHERE Nome = 'Garry Kasparov');

# i) Remover todos os participantes acomodados no Hotel “Matsoud Plaza”.

DELETE FROM PARTICIPANTE
WHERE NumAssociado in (SELECT NumAssociado
			           FROM HOSPEDAGEM
                       WHERE NomeHotel = 'Matsoud Plaza');
                       
# j) Transferir todos os participantes acomodados no Hotel “Matsoud Plaza” para  o Hotel “Ibis Consolação” na mesma Data de entrada e data de saída.

UPDATE HOSPEDAGEM
SET NomeHotel = 'Ibis Consolação'
WHERE NomeHotel = 'Matsoud Plaza';



SELECT PARTIDA.CodigoPartida, A.Nome, B.Nome, C.Nome, PARTIDA.idSalao, PARTIDA. jornada 
FROM PARTIDA, PARTICIPANTE A, PARTICIPANTE B, PARTICIPANTE C 
WHERE A.Nome = PARTIDA.NumArbitro and B.Nome = PARTIDA.NumJogadorBrancas and C.Nome = PARTIDA.NumJogadorPretas; 

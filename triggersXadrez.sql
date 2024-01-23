/*------------------------- Ordenação dos ids dos países, conforme a ordem ALFABÉTICA---------------------------*/

#------------- Antes da inserção-------------------

Delimiter $$
Create trigger Sort_Insert_Pais
before insert on campeonatoxadrez.pais
for each row
begin
	#OBS: Sempre lembrar que é preciso adicionar um registro na tabela axiliar IDPAIS, para que os updates sejam possiveis

	declare atualNumero  smallint; #recebera o numero do ultimo exemplo da tabela
    declare LocalInsercao smallint; #recebera o numero anterior ao local da inserçao da nova linha
    
    select max(NumeroPais) from campeonatoxadrez.pais into atualNumero;
    
    select max(NumeroPais) from campeonatoxadrez.pais 
    where Nome < new.Nome into LocalInsercao;
    
    #CASO EM QUE A INSERCAO É NO MEIO E NO FINAL DA TABELA 
    
    if ( LocalInsercao ) then
		#vamos somar 1 para cada linha dps do valor obtido, do maior pro menor, e ent inserir a nova tupla
		while ( atualNumero <> LocalInsercao )
			do update campeonatoxadrez.IDPAIS set NumeroPais = atualNumero+1 where NumeroPais = atualNumero;
			set atualNumero = atualNumero-1;
		end while;
		
		set new.NumeroPais = LocalInsercao+1; # A posiçao do pais inserido agr
		 INSERT INTO campeonatoxadrez.IDPAIS (NumeroPais) VALUES (new.NumeroPais);
        
    #CASO EM QUE A INSERCAO É FEITA NO COMEÇO E JA HÁ RESGISTROS NA TABELA
    
	else 
		if ( atualNumero ) then
			#some um a todos os registros da tabela
			while ( atualNumero <> 0 )
				do update campeonatoxadrez.IDPAIS set NumeroPais = atualNumero+1 where NumeroPais = atualNumero;
				set atualNumero = atualNumero-1;
			end while;
        
			set new.NumeroPais = 1; # A posiçao do pais inserido agr
			 INSERT INTO campeonatoxadrez.IDPAIS (NumeroPais) VALUES (new.NumeroPais);
		else
			# CASO EM QUE A INSERCAO É FEITA NO COMEÇO e A TABELA ESTA VAZIA
    
			set new.NumeroPais = 1;
			INSERT INTO campeonatoxadrez.IDPAIS (NumeroPais) VALUES (new.NumeroPais);
		end if;
    
	end if;
end;
$$
drop trigger Sort_Insert_Pais;

#--------------- Antes do Update ----------------------

Delimiter $$
create trigger Sort_Update_Pais
before update on campeonatoxadrez.pais
for each row
begin
	if(new.NumeroPais <> old.NumeroPais) then
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Erro: Os Paises devem permanecer em ordem alfabética ';
	END IF;
end; $$

#---------------- Depois da Delecao--------------------

#Atualizar registros com valores de chave superiores/ OBS: ATUALIZACAO SEMPRE NA TAB AUXILIAR

Delimiter $$
Create trigger Sort_Delete_Pais
after delete on campeonatoxadrez.pais
for each row
begin
    
    declare atualNumero  smallint; #recebera o numero da tupla seguinte a excluida
    declare maxNumero smallint; #recebera o numero do ultimo exemplo da tabela
    
    set atualNumero = old.NumeroPais + 1;
    select max(NumeroPais) from campeonatoxadrez.IDPAIS into maxNumero;
   
    #Primeiro temos q deletar da tabela auxiliar
    delete from campeonatoxadrez.IDPAIS where NumeroPais = old.NumeroPais;
    
	if ( maxNumero > old.NumeroPais ) then
		#vamos subtrair em 1 cada linha acima da tupla excluida, da menor a maior
		while ( atualNumero <= maxNumero )
			do update campeonatoxadrez.IDPAIS set NumeroPais = atualNumero-1 where NumeroPais = atualNumero;
			set atualNumero = atualNumero+1;
		end while;
	end if;
end;
$$		


/*----------------------------- Tabela Paricipantes: restrição - Papel "A" ou "J"---------------------------*/

# Antes da inserção
DELIMITER $$
CREATE TRIGGER chk_Papel_Insert
BEFORE INSERT ON campeonatoxadrez.participante
FOR EACH ROW
BEGIN
	IF (new.papel not in ('A','J')) THEN
   	 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Erro: Papel Invalido. ("A" ,"J") são os valores permitidos ';
	END IF;
END $$
DELIMITER ;

# Antes da atualização

DELIMITER $$
CREATE TRIGGER chk_Papel_Update
BEFORE UPDATE ON campeonatoxadrez.participante
FOR EACH ROW
BEGIN
	IF (new.papel not in ('A','J')) THEN
   	 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Erro: Papel Invalido. ("A" ,"J") são os valores permitidos ';
	END IF;
END $$
DELIMITER ;


/*------------------------ Tabela Jogador: restrição - Nivel de 1 a 10 -------------------------*/
# Antes da insersão
DELIMITER $$
CREATE TRIGGER chk_Nivel_Insert
BEFORE INSERT ON campeonatoxadrez.jogador
FOR EACH ROW
BEGIN
	IF (new.nivel < 1 or new.nivel > 10) THEN
   	 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Erro: Nível incorreto. [1,10] é o intervalo de valores permitidos ';
	END IF;
END $$
DELIMITER ;

# Antes da atualização

DELIMITER $$
CREATE TRIGGER chk_Nivel_Update
BEFORE UPDATE ON campeonatoxadrez.jogador
FOR EACH ROW
BEGIN
	IF (new.nivel < 1 or new.nivel > 10) THEN
   	 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Erro: Nível incorreto. [1,10] é o intervalo de valores permitidos ';
	END IF;
END $$
DELIMITER ;


/*--------------------------- Nenhum árbitro pode participar como jogador ------------------------------*/

DELIMITER $$
CREATE TRIGGER JOGADOR_DIFERENTE_DE_ARBITRO
BEFORE INSERT ON campeonatoxadrez.jogador
FOR EACH ROW
BEGIN
	declare papelParticipante char(255);
	select papel from campeonatoxadrez.participante
	where numAssociado = new.numAssociado into papelParticipante;

    IF (papelParticipante = "A") THEN
   	 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Erro: Nenhum Arbitro pode participar como jogador.';
	END IF;
END $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER ARBITRO_DIFERENTE_DE_JOGADOR
BEFORE INSERT ON campeonatoxadrez.partida
FOR EACH ROW
BEGIN
	declare papelParticipante char(255);
	select papel from campeonatoxadrez.participante
	where numAssociado = new.numArbitro into papelParticipante;

    IF (papelParticipante = "J") THEN
   	 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Erro: Nenhum JOGADOR pode participar como arbitro.';
	END IF;
END $$
DELIMITER ;


/*--------------------------- Nenhum jogador pode jogar consigo mesmo------------------------------*/

DELIMITER //

CREATE TRIGGER evitarJogadorDuplo BEFORE INSERT ON PARTIDA
FOR EACH ROW
BEGIN
    DECLARE numJogadorB INTEGER;
    DECLARE numJogadorP INTEGER;
    
    SET numJogadorB = NEW.NumJogadorBrancas;
    SET numJogadorP = NEW.NumJogadorPretas;
    
    IF numJogadorB = numJogadorP THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'O jogador não pode jogar consigo mesmo.';
    END IF;
END //

DELIMITER ;




/*------------Um árbitro não pode arbitrar a jogadores enviados pelo mesmo país pelo qual foi enviado-------------*/

DELIMITER $$
CREATE TRIGGER PAIS_DIF_JOGADOR_ARBITRO
BEFORE INSERT ON campeonatoxadrez.partida
FOR EACH ROW
BEGIN
	declare numPaisJogB smallint;
    declare numPaisJogP smallint;
	declare numPaisArb smallint;
	
    select NumeroPais from Participante 
	where numAssociado = new.numArbitro into numPaisArb;
                            
	select NumeroPais from Participante 
	where numAssociado = new.numJogadorBrancas into numPaisJogB;
                            
	select NumeroPais from Participante 
	where numAssociado = new.numJogadorPretas into numPaisJogP;                            
    
	IF (numPaisArb = numPaisJogB or numPaisArb = numPaisJogP) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Erro: Um árbitro não pode arbitrar jogadores enviados pelo seu próprio país';
	END IF;
END $$
DELIMITER ;



CREATE TABLE GRAVADORA (
       id serial NOT NULL,
       Nome       VARCHAR(60) NULL,
       Endereco             VARCHAR(60) NULL,
       Telefone             VARCHAR(20) NULL,
       Contato              VARCHAR(20) NULL,
       URL                  VARCHAR(80) NULL,
    PRIMARY KEY (id) 
);


CREATE TABLE CD (
       id            serial NOT NULL,
       gravadora_id     INTEGER NULL,
       Nome              VARCHAR(60) NULL,
       Preco_Venda          REAL NULL,
       Data_Lancamento      DATE NULL,
       cd_id          INTEGER NULL, -- indicação
       PRIMARY KEY (id),
       FOREIGN KEY (cd_id)   REFERENCES CD(id),
       FOREIGN KEY (gravadora_id) REFERENCES GRAVADORA(id) 
);
 
CREATE TABLE MUSICA (
       id        serial NOT NULL,
       Nome          VARCHAR(60) NULL,
       Duracao              REAL  NULL,
       PRIMARY KEY (id) 
);


CREATE TABLE AUTOR (
       id serial NOT NULL,
       Nome           VARCHAR(60) NULL,
       PRIMARY KEY (id)
);


CREATE TABLE MUSICA_AUTOR (
       musica_id        INTEGER NOT NULL,
       autor_id         INTEGER NOT NULL,
       PRIMARY KEY (musica_id, autor_id),
       FOREIGN KEY (autor_id)   REFERENCES AUTOR(id),
       FOREIGN KEY (musica_id)  REFERENCES MUSICA(id)
);


CREATE TABLE FAIXA (
       musica_id        INTEGER NOT NULL,
       cd_id            INTEGER NOT NULL,
       Numero_Faixa         INTEGER NULL,
       PRIMARY KEY (musica_id, cd_id),
       FOREIGN KEY (cd_id)      REFERENCES CD(id),
       FOREIGN KEY (musica_id)  REFERENCES MUSICA(id)
);



-- TABELA DE AUTOR
INSERT INTO AUTOR ( NOME)
 VALUES ('Renato Russo' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Tom Jobim' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Chico Buarque' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Dado Villa-Lobos' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Marcelo Bonfá' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Ico Ouro-Preto' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Vinicius de Moraes' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Baden Powell' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Paulo Cesar Pinheiro' );
INSERT INTO AUTOR ( NOME)
 VALUES ('João Bosco' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Aldir Blanc' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Joyce' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Ana Terra' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Cartola' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Cláudio Tolomei' );
INSERT INTO AUTOR ( NOME)
 VALUES ('João Nogueira' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Suely Costa' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Guinga' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Danilo Caymmi' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Tunai' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Sérgio Natureza' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Heitor Villa Lobos' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Ferreira Gullar' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Catulo da Paixão Cearense' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Zezé di Camargo' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Niltinho Edilberto' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Marisa Monte' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Carlinhos Brown' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Gonzaga Jr' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Roberto Mendes' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Ana Basbaum' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Caetano Veloso' );
INSERT INTO AUTOR ( NOME)
 VALUES ('José Miguel Wisnik' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Vevé Calazans' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Gerônimo' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Sérgio Natureza' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Roberto Carlos' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Erasmo Carlos' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Renato Teixeira' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Chico César' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Vanessa da Mata' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Jorge Portugal' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Lilian Knapp' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Renato Barros' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Bebel Gilberto' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Cazuza' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Dé' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Adriana Calcanhoto' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Antonio Cícero' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Paulo Machado' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Dorival Caymmi' );
INSERT INTO AUTOR ( NOME)
 VALUES ('João Donato' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Ronaldo Bastos' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Barry Manilow' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Richard Kerr' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Chris Arnold' );
INSERT INTO AUTOR ( NOME)
 VALUES ('David Pomeranz' );
INSERT INTO AUTOR ( NOME)
 VALUES ('George Michael' );
INSERT INTO AUTOR ( NOME)
 VALUES ('S. Wonder' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Elton John' );
INSERT INTO AUTOR ( NOME)
 VALUES ('Arnaldo Antunes' );


-- TABELA DE MÚSICA
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Será',2.28 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Ainda é Cedo', 3.55 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Geração Coca-Cola', 2.20 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Eduardo e Monica', 4.32 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Tempo Perdido', 5.00 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Índios', 4.23 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Que País é Este',2.64 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Faroeste Caboclo', 9.03 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Há Tempos', 3.16 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Pais e Filhos', 5.06 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Meninos e Meninas', 3.22 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Vento no Litoral', 6.05 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Perfeição', 4.35 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Giz', 3.20 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Dezesseis', 5.28 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Antes das Seis', 3.09 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Meninos, Eu Vi', 3.25 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Eu Te Amo', 3.06 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Piano na Mangueira', 2.23 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('A Violeira', 2.54 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Anos Dourados', 2.56 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Olha, Maria', 3.55 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Biscate', 3.20 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Retrato em Preto e Branco', 3.03 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Falando de Amor', 3.20 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Pois É', 2.48 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Noite dos Mascarados', 2.42 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Sabiá', 3.20 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Imagina', 2.52 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Bate-Boca', 4.41 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Cai Dentro', 2.41 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('O Bêbado e o Equilibrista', 3.47 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Essa Mulher', 3.47 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Basta de Clamares Inocência', 3.38 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Beguine Dodói', 2.14 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Eu hein Rosa', 3.36 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Altos e Baixos', 3.29 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Bolero de Satã', 3.32 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Pé Sem Cabeça', 2.57 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('As Aparências Enganam', 4.18 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('É o Amor', 4.19 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Trenzinho Caipira', 3.32 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Luar do Sertão', 3.23 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Não tenha Medo', 3.27 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Eu queria que você viesse', 2.57 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Espere por mim Morena', 3.04 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Resto de mim', 2.59 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Gema', 2.51 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Cacilda', 2.22 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Agradecer e abraçar', 3.30 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('As flores do jardim da nossa casa', 3.26 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Romaria', 3.16 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('A força que nunca seca', 2.17 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Vila do Adeus', 3.06 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Devolva-me', 3.58 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Mais Feliz', 2.50 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Inverno', 4.40 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Mentiras', 2.58 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Esquadros', 3.10 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Cariocas', 3.14 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Vambora', 4.16 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Por isso eu Corro Demais', 2.58 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Maresia', 4.09 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Metade', 3.25 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Senhas', 3.37 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Marina', 2.55 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Naquela Estação', 4.46 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Mandy', 3.18 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('New York City Rhythm', 4.41 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Looks Like We Made It', 3.32 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Daybreak', 3.05 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Can''t Smile Without you', 3.13 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('It''s a Miracle', 3.53 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Even Now', 3.29 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Bandstand Boogie', 2.50 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Trying to get the feeling again', 3.50 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Some Kind of Friend', 4.02 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Praying for Time', 3.52 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Freedom 90', 3.52 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('They Won''t Go When I Go', 3.22 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Something to Save', 4.10 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Cowboys and Angels', 4.12 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Don''t Let the Sun Go Down on Me', 3.45 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Waiting for That Day', 2.58 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Mothers Pride', 2.12 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Heal the Pain', 3.02 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Soul Free', 2.42 );
INSERT INTO MUSICA ( NOME, DURACAO )
 VALUES ('Waiting', 3.32 );


-- TABELA GRAVADORA
INSERT INTO GRAVADORA (NOME, ENDERECO, URL, CONTATO )
 VALUES ('EMI', 'Rod. Pres. Dutra, s/n  km 229,8', 'www.emi-music.com.br', 'JOÃO' );
INSERT INTO GRAVADORA (NOME, ENDERECO, URL, CONTATO )
 VALUES ('BMG', 'Av. Piramboia, 2898 - Parte 7', 'www.bmg.com.br', 'MARIA' );
INSERT INTO GRAVADORA (NOME, ENDERECO, URL, CONTATO )
 VALUES ('SOM LIVRE', NULL, 'www.somlivre.com.br', 'MARTA' );
INSERT INTO GRAVADORA (NOME, ENDERECO, URL, CONTATO )
 VALUES ('EPIC', NULL, 'www.epic.com.br', 'PAULO' );

-- TABELA CD
INSERT INTO CD (GRAVADORA_id, NOME, PRECO_VENDA, DATA_LANCAMENTO )
 VALUES (1, 'Mais do Mesmo', 15.00, '01/10/1998' );
INSERT INTO CD (GRAVADORA_id, NOME, PRECO_VENDA, DATA_LANCAMENTO )
 VALUES (2, 'Bate-Boca', 12.00, '01/07/1999' );
INSERT INTO CD (GRAVADORA_id, NOME, PRECO_VENDA, DATA_LANCAMENTO )
 VALUES (3, 'Elis Regina - Essa Mulher', 13.00, '01/05/1989' );
INSERT INTO CD (GRAVADORA_id, NOME, PRECO_VENDA, DATA_LANCAMENTO )
 VALUES (2, 'A Força que nunca Seca', 13.50, '01/12/1998' );
INSERT INTO CD (GRAVADORA_id, NOME, PRECO_VENDA, DATA_LANCAMENTO )
 VALUES (3, 'Perfil', 10.50, '01/05/2001' );
INSERT INTO CD (GRAVADORA_id, NOME, PRECO_VENDA, DATA_LANCAMENTO )
 VALUES (2, 'Barry Manilow Greatest Hits Vol I', 9.50, '01/11/1991' );
INSERT INTO CD (GRAVADORA_id, NOME, PRECO_VENDA, DATA_LANCAMENTO )
 VALUES (2, 'Listen Without Prejudice', 9.00, '01/10/1991' );

UPDATE CD
   SET CD_Id = 5
 WHERE id = 1;
UPDATE CD
   SET CD_Id = 3
 WHERE id = 2;
UPDATE CD
   SET CD_Id = 1
 WHERE id = 3;
UPDATE CD
   SET CD_Id = 2
 WHERE id = 5;
UPDATE CD
   SET CD_Id = 7
 WHERE id = 6;
UPDATE CD
   SET CD_Id = 1
 WHERE id = 4;

-- TABELA ITEMCD
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 1, 1 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 2, 2 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 3, 3 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 4, 4 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 5, 5 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 6, 6 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 7, 7 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 8, 8 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 9, 9 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 10, 10 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 11, 11 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 12, 12 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 13, 13 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 14, 14 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 15, 15 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 1, 16, 16 );
-- BATE-BOCA
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 1, 17 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 2, 18 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 3, 19 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 4, 20 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 5, 21 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 6, 22 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 7, 23 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 8 ,24 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 9, 25 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 10, 26 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 11, 27 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 12, 28 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 13, 29 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 2, 14, 30 );
-- ESSA MULHER
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 3, 1, 31 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 3, 2, 32 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 3, 3, 33 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 3, 4, 34 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 3, 5, 35 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 3, 6, 36 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 3, 7, 37 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 3, 8 ,38 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 3, 9, 39 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 3, 10, 40 );
-- FORÇA QUE NUNCA SECA
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 1, 41 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 2, 42 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 3, 43 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 4, 44 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 5, 45 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 6, 46 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 7, 47 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 8 ,48 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 9, 49 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 10, 50 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 11, 51 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 12, 52 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 13, 53 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 4, 14, 54 );
-- DEVOLVA-ME
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 1, 55 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 2, 56 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 3, 57 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 4, 58 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 5, 59 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 6, 60 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 7, 61 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 8 ,62 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 9, 63 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 10, 64 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 11, 65 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 12, 66 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 5, 13, 67 );
-- BARRY MANILOW
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 6, 1, 68 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 6, 2, 69 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 6, 3, 70 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 6, 4, 71 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 6, 5, 72 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 6, 6, 73 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 6, 7, 74 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 6, 8 ,75 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 6, 9, 76 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 6, 10, 77 );
-- LISTEN WITHOUT PREJUDICE
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 7, 1, 78 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 7, 2, 79 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 7, 3, 80 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 7, 4, 81 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 7, 5, 82 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 7, 6, 83 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 7, 7, 84 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 7, 8 ,85 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 7, 9, 86 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 7, 10, 87 );
INSERT INTO FAIXA (CD_id, NUMERO_FAIXA, musica_id)
 VALUES ( 7, 11, 88 );

-- TABELA MUSICA_AUTOR
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 1, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 2, 5 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 2, 6 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 3, 4 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 3, 5 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 3, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 4, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 4, 4 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 5, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 6, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 7, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 8, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 9, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 9, 4 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 9, 5 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 10, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 10, 4 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 10, 5 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 11, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 11, 4 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 11, 5 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 12, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 12, 4 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 12, 5 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 13, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 13, 4 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 13, 5 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 14, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 14, 4 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 14, 5 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 15, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 15, 4 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 15, 5 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 16, 1 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 16, 4 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 16, 5 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 17, 2 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 17, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 18, 2 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 18, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 19, 2 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 19, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 20, 2 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 20, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 21, 2 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 21, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 22, 2 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 22, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 22, 7 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 23, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 24, 2 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 24, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 25, 2 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 26, 2 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 26, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 27, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 28, 2 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 28, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 29, 2 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 29, 3 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 30, 3 );
-- ESSA MULHER
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 31, 8 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 31, 9 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 32, 10 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 32, 11 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 33, 12 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 33, 13 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 34, 14 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 35, 10 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 35, 11 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 35, 15 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 36, 16 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 36, 9 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 37, 17 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 37, 11 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 38, 18 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 38, 9 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 39, 19 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 39, 13 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 40, 20 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 40, 21 );
-- A FORÇA QUE NUNCA SECA
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 41, 25 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 44, 26 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 45, 27 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 45, 28 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 46, 29 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 47, 30 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 47, 31 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 48, 32 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 49, 33 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 50, 35 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 50, 36 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 51, 37 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 51, 38 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 52, 39 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 53, 40 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 53, 41 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 54, 30 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 54, 42 );
-- DEVOLVA-ME
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 55, 43 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 55, 44 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 56, 45 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 56, 46 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 56, 47 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 57, 48 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 57, 49 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 58, 48 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 59, 48 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 60, 48 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 61, 48 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 62, 37 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 63, 50 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 63, 49 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 64, 48 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 65, 48 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 66, 51 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 67, 52 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 67, 53 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 67, 32 );
-- BARRY MANILOW
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 68, 55 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 69, 54 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 70, 55 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 71, 54 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 72, 56 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 73, 54 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 74, 54 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 75, 54 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 76, 57 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 77, 54 );


INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 78, 58 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 79, 58 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 80, 59 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 81, 58 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 82, 58 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 83, 60 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 84, 58 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 85, 58 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 86, 58 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 87, 58 );
INSERT INTO MUSICA_AUTOR (musica_id, autor_id )
 VALUES ( 88, 58 );







 






CREATE TABLE aluno (
  id serial,
  nome varchar(255) NOT NULL DEFAULT '',
  email varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
);


INSERT INTO aluno (id, nome, email)
VALUES
	(default,'João da Silva','joao@dasilva.com'),
	(default,'Frederico José','fred@jose.com'),
	(default,'Alberto Santos','alberto@santos.com'),
	(default,'Renata Alonso','renata@alonso.com'),
	(default,'Paulo da Silva','paulo@dasilva.com');


CREATE TABLE curso (
  id serial,
  nome varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
);


INSERT INTO curso (id, nome)
VALUES
	(default,'SQL e banco de dados'),
	(default,'Desenvolvimento web com VRaptor'),
	(default,'Scrum e métodos ágeis'),
	(default,'PHP e MySql'),
	(default,'Postgres');

	--insert into curso (id, nome) values (default, 'Postgres')



CREATE TABLE matricula (
  id serial,
  aluno_id integer NOT NULL references aluno(id) on delete restrict on update cascade,
  curso_id integer NOT NULL references curso(id) on delete restrict on update cascade,
  data timestamp NOT NULL,
  tipo varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
);

INSERT INTO matricula (id, aluno_id, curso_id, data, tipo)
VALUES
	(default,1,1,'2013-11-25 16:16:05','PAGA_PF'),
	(default,2,1,'2013-05-25 16:16:25','PAGA_PJ'),
	(default,3,3,'2013-07-21 16:16:30','PAGA_PF'),
	(default,4,4,'2013-11-15 16:15:35','PAGA_PK'),
	(default,2,2,'2012-01-04 00:00:00','PAGA_PJ');






CREATE TABLE secao (
  id serial,
  curso_id integer NOT NULL references curso(id) on delete restrict on update cascade,
  titulo varchar(255) NOT NULL DEFAULT '',
  explicacao text NOT NULL,
  numero integer NOT NULL,
  PRIMARY KEY (id)
);





INSERT INTO secao (id, curso_id, titulo, explicacao, numero)
VALUES
	(default,1,'Aprendendo o SELECT','explicacao do capitulo Aprendendo o SELECT',1),
	(default,1,'Aprendendo o UPDATE','explicacao do capitulo Aprendendo o UPDATE',2),
	(default,1,'Aprendendo o DELETE','explicacao do capitulo Aprendendo o DELETE',3),
	(default,1,'Aprendendo o INSERT','explicacao do capitulo Aprendendo o INSERT',4),
	(default,2,'O que é a Web?','explicacao do capitulo O que é a Web?',1),
	(default,2,'Entendendo o MVC','explicacao do capitulo Entendendo o MVC',2),
	(default,2,'O objeto Result','explicacao do capitulo O objeto Result',3),
	(default,2,'Interceptor','explicacao do capitulo Interceptor',4),
	(default,3,'Planejando a iteração','explicacao do capitulo Planejando a iteração',1),
	(default,3,'Retrospectivas','explicacao do capitulo Retrospectivas',2),
	(default,3,'Reunião Diária','explicacao do capitulo Reunião Diária',3),
	(default,3,'Kanban e XP','explicacao do capitulo Kanban e XP',4),
	(default,4,'Introdução a Web','explicacao do capitulo Introdução a Web',1),
	(default,4,'O servidor Apache','explicacao do capitulo O servidor Apache',2),
	(default,4,'Lidando com o MySql','explicacao do capitulo Lidando com o MySql',3),
	(default,4,'Instalando a aplicação','explicacao do capitulo Instalando a aplicação',4);




CREATE TABLE exercicio (
  id serial,
  secao_id integer NOT NULL references secao(id) on delete restrict on update cascade,
  pergunta text NOT NULL,
  resposta_oficial text NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial)
VALUES
	(default,1,'O que é um select?','Uma consulta que devolve resultados'),
	(default,1,'Como funciona um select?','select campos from tabela'),
	(default,2,'O que é um update?','serve pra alterar dados'),
	(default,2,'Perigos do update?','Nao pode esquecer de colocar where'),
	(default,3,'O que é um delete?','deleta uma linha do banco de dados'),
	(default,3,'Cuidados com ele?','nao pode esquecer do where'),
	(default,4,'o que eh um insert?','serve para inserir um dado no banco'),
	(default,4,'como funciona?','insert into (coluna1, coluna2) values (v1, v2)'),
	(default,5,'Como funciona a web?','requisicao e resposta'),
	(default,5,'Que linguagens posso ajudar?','varias, java, php, c#, etc'),
	(default,6,'O que eh MVC?','model view controller'),
	(default,6,'Frameworks que usam?','vraptor, spring mvc, struts, etc'),
	(default,7,'O que é a classe Result?','serve para lidar com o resultado'),
	(default,8,'O que é um interceptor?','eh como se fosse um filtro que eh executado antes'),
	(default,8,'quando usar?','tratamento de excecoes, conexao com o banco de dados'),
	(default,9,'o que eh iteracao','tempo que vc tem pra agregar valor'),
	(default,9,'qual tamanho bom?','de 2 a 4 semanas, segundo o scrum guide antigo'),
	(default,10,'o que sao retrospectiva?','reunioes onde a ideia eh melhorar o processo'),
	(default,10,'quando devemos fazer?','geralmente a cada iteracao'),
	(default,11,'o que eh a reuniao diaria?','uma pequena reuniao para informar a equipe sobre o andamento da iteracao'),
	(default,11,'quando fazemos?','uma vez por dia, em um horario fixo e pre definido'),
	(default,12,'o que eh kanban?','um metodo agil tb'),
	(default,12,'o que eh xp?','outro metodo agil'),
	(default,12,'tem outros?','lean, crystal, fdd'),
	(default,13,'o que eh a web?','eh a internet, ue'),
	(default,13,'como funciona a web?','requisicao e resposta'),
	(default,14,'o que eh o apache?','servidor que sabe trabalhar com HTTP'),
	(default,14,'java funciona?','sim, quando colocamos o tomcat junto com ele'),
	(default,15,'o que eh mysql','essa voce sabe, certo? :)'),
	(default,16,'o que eh deploy?','eh o processo de colocarmos a aplicacao no ar'),
	(default,16,'como faz?','em php, basta copiar os arquivos php, em java, basta copiar o jar');


CREATE TABLE resposta (
  id serial,
  exercicio_id integer DEFAULT NULL references exercicio(id) on delete restrict on update cascade,
  aluno_id integer DEFAULT NULL references aluno(id) on delete restrict on update cascade,
  resposta_dada text,
  PRIMARY KEY (id)
);

INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada)
VALUES
	(default,1,1,'uma selecao'),
	(default,2,1,'ixi, nao sei'),
	(default,3,1,'alterar dados'),
	(default,4,1,'eskecer o where e alterar tudo'),
	(default,5,1,'apagar coisas'),
	(default,6,1,'tb nao pode eskecer o where'),
	(default,7,1,'inserir dados'),
	(default,1,2,'buscar dados'),
	(default,2,2,'select campos from tabela'),
	(default,3,2,'alterar coisas'),
	(default,4,2,'ixi, nao sei'),
	(default,16,3,'tempo pra fazer algo'),
	(default,17,3,'1 a 4 semanas'),
	(default,18,3,'melhoria do processo'),
	(default,19,3,'todo dia'),
	(default,20,3,'reuniao de status'),
	(default,21,3,'todo dia'),
	(default,22,3,'o quadro branco'),
	(default,23,3,'um metodo agil'),
	(default,24,3,'tem varios outros'),
	(default,25,4,'eh a internet'),
	(default,26,4,'browser faz requisicao, servidor manda resposta'),
	(default,27,4,'eh o servidor que lida com http'),
	(default,28,4,'nao sei'),
	(default,29,4,'banco de dados!'),
	(default,30,4,'eh colocar a app na internet'),
	(default,31,4,'depende da tecnologia, mas geralmente eh levar pra um servidor que ta na internet');


CREATE TABLE nota (
  id serial,
  resposta_id integer DEFAULT NULL references resposta(id) on delete restrict on update cascade,
  nota integer DEFAULT NULL,
  PRIMARY KEY (id)
);

INSERT INTO nota (id, resposta_id, nota)
VALUES
	(default,1,8),
	(default,2,0),
	(default,3,7),
	(default,4,6),
	(default,5,9),
	(default,6,10),
	(default,7,4),
	(default,8,4),
	(default,9,7),
	(default,10,8),
	(default,11,6),
	(default,12,7),
	(default,13,4),
	(default,14,9),
	(default,15,3),
	(default,16,5),
	(default,17,5),
	(default,18,5),
	(default,19,6),
	(default,20,8),
	(default,21,8),
	(default,22,9),
	(default,23,10),
	(default,24,2),
	(default,25,0),
	(default,26,1),
	(default,27,4);

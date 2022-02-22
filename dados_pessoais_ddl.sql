CREATE TABLE tipo_logradouro (
    id serial primary key,
    descricao varchar(200)
);

CREATE TABLE tipo_telefone (
    id serial primary key,
    descricao varchar(200)
);

CREATE TABLE telefone (
    id integer NOT NULL primary key,
    tipo_telefone_id integer references tipo_telefone(id),
    codigo_area char(2),
    numero varchar(50),
    ramal varchar(10)
);

CREATE TABLE tipo_sanguineo(
  id serial primary key,
  descricao varchar(100) NOT NULL
);

CREATE TABLE raca (
    id serial primary key,
    descricao varchar(200)
);


CREATE TABLE sexo (
    id serial primary key,
    descricao varchar(200),
    sigla char(2)
);


CREATE TABLE estado_civil (
    id serial primary key,
    descricao varchar(100) NOT NULL
);

CREATE TABLE grau_formacao (
    id serial primary key,
    descricao varchar(200)
);

CREATE TABLE pais (
    id serial primary key,
    nome varchar(200),
    nacionalidade varchar(200)
);

CREATE TABLE unidade_federativa (
    id serial primary key,
    descricao varchar(200),
    sigla char(2),
    pais_id integer REFERENCES pais(id)
);

CREATE TABLE municipio (
    id serial primary key,
    unidade_federativa_id integer references unidade_federativa(id),
    nome varchar(200)
);

CREATE TABLE endereco (
    id serial primary key,
    tipo_logradouro_id integer references tipo_logradouro(id),
    municipio_id integer references municipio(id),
    nome_logradouro varchar(200),
    complemento varchar(200),
    caixa_postal varchar(200),
    bairro varchar(200),
    cep char(9),
    numero varchar(10)
);

CREATE TABLE pessoa_fisica (
    id serial primary key,
    data_nascimento date,
    nome_pai varchar(200),
    nome_mae varchar(200),
    email varchar(255),
    grau_formacao_id integer  references grau_formacao(id),
    sexo_id integer  references sexo(id),
    pais_id integer  references pais(id),
    municipio_id integer  references municipio(id),
    tipo_sanguineo_id integer  references tipo_sanguineo(id),
    raca_id integer  references raca(id),
    estado_civil_id integer  references estado_civil(id),
    endereco_id integer  references endereco(id),
    nome varchar(200),
    foto varchar(200)
);

CREATE TABLE pessoa_fisica_telefone (
    pessoa_fisica_id integer NOT NULL  references pessoa_fisica(id),
    telefone_id integer NOT NULL  references telefone(id),
    primary key(pessoa_fisica_id, telefone_id)
);


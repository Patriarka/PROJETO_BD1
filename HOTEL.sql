DROP TABLE IF EXISTS CAMAREIRA_LIMPA_QUARTO;
DROP TABLE IF EXISTS QUARTO_POSSUI_CATEGORIA;
DROP TABLE IF EXISTS CATEGORIA;
DROP TABLE IF EXISTS QUARTO;
DROP TABLE IF EXISTS HOSPEDAGEM;
DROP TABLE IF EXISTS MANOBRA_CARRO;
DROP TABLE IF EXISTS CARRO;
DROP TABLE IF EXISTS HOSPEDE_CONSOME_PRODUTOS;
DROP TABLE IF EXISTS HOSPEDE;
DROP TABLE IF EXISTS PRODUTOS;
DROP TABLE IF EXISTS CNH;
DROP TABLE IF EXISTS ALIMENTO_TEM_CARDAPIO;
DROP TABLE IF EXISTS CARDAPIO;
DROP TABLE IF EXISTS ALIMENTO_TEM_FORNECEDOR;
DROP TABLE IF EXISTS ALIMENTO;
DROP TABLE IF EXISTS CONTATO;
DROP TABLE IF EXISTS FORNECEDOR;
DROP TABLE IF EXISTS AUXILIAR_DE_COZINHA;
DROP TABLE IF EXISTS CHEFE_DE_COZINHA;
DROP TABLE IF EXISTS CAMAREIRA;
DROP TABLE IF EXISTS ATENDENTE;
DROP TABLE IF EXISTS COZINHEIRO;
DROP TABLE IF EXISTS GERENTE;
DROP TABLE IF EXISTS MANOBRISTA;
DROP TABLE IF EXISTS FUNCIONARIO;

CREATE TABLE FUNCIONARIO(
	id_func INTEGER PRIMARY KEY,
    nome VARCHAR(60),
    cpf CHAR(11),
    rg VARCHAR(20),
    num_carteira_trabalho VARCHAR(20),
    salario FLOAT
);

CREATE TABLE MANOBRISTA(
	id_manobrista INTEGER PRIMARY KEY,
    FOREIGN KEY(id_manobrista) REFERENCES FUNCIONARIO(id_func) ON DELETE CASCADE
);

CREATE TABLE GERENTE(
	id_gerente INTEGER PRIMARY KEY,
    formacao VARCHAR(100),
    cursos VARCHAR(200),
    comissao FLOAT,
    FOREIGN KEY(id_gerente) REFERENCES FUNCIONARIO(id_func) ON DELETE CASCADE
);

CREATE TABLE COZINHEIRO(
	id_cozinheiro INTEGER PRIMARY KEY,
    area_atuacao VARCHAR(200),
    FOREIGN KEY(id_cozinheiro) REFERENCES FUNCIONARIO(id_func) ON DELETE CASCADE
);

CREATE TABLE ATENDENTE(
	id_atendente INTEGER PRIMARY KEY,
    FOREIGN KEY(id_atendente) REFERENCES FUNCIONARIO(id_func) ON DELETE CASCADE
);

CREATE TABLE CAMAREIRA(
	id_camareira INTEGER PRIMARY KEY,
    FOREIGN KEY(id_camareira) REFERENCES FUNCIONARIO(id_func) ON DELETE CASCADE
);

CREATE TABLE CHEFE_DE_COZINHA(
	id_chefe_cozinha INTEGER PRIMARY KEY,
    area_atuacao VARCHAR(200),
    FOREIGN KEY(id_chefe_cozinha) REFERENCES COZINHEIRO(id_cozinheiro) ON DELETE CASCADE
);

CREATE TABLE AUXILIAR_DE_COZINHA(
	id_aux_cozinha INTEGER PRIMARY KEY,
    area_atuacao VARCHAR(200),
    FOREIGN KEY(id_aux_cozinha) REFERENCES COZINHEIRO(id_cozinheiro) ON DELETE CASCADE,
    id_chefe INTEGER,
    FOREIGN KEY(id_chefe) REFERENCES CHEFE_DE_COZINHA(id_chefe_cozinha)
);

CREATE TABLE FORNECEDOR(
	cnpj CHAR(14) PRIMARY KEY,
    nome_empresa VARCHAR(60),
    razao_social VARCHAR(60),
    cidade VARCHAR(60)
);

CREATE TABLE CONTATO(
	telefone CHAR(11) PRIMARY KEY,
    cnpj_empresa CHAR(14),
    FOREIGN KEY(cnpj_empresa) REFERENCES FORNECEDOR(cnpj),
    nome VARCHAR(60),
    email VARCHAR(100)
);

CREATE TABLE ALIMENTO(
	nome VARCHAR(60) PRIMARY KEY,
    cat VARCHAR(60),
    qtde INTEGER,
    id_comprador INTEGER,
    FOREIGN KEY(id_comprador) REFERENCES GERENTE(id_gerente)
);

CREATE TABLE ALIMENTO_TEM_FORNECEDOR(
	cnpj_forn CHAR(14),
    nome_alim VARCHAR(60),
    data_forn DATE,
    FOREIGN KEY(cnpj_forn) REFERENCES FORNECEDOR(cnpj), 
    FOREIGN KEY(nome_alim) REFERENCES ALIMENTO(nome),
    PRIMARY KEY(cnpj_forn, nome_alim)
);

CREATE TABLE CARDAPIO(
	dia DATE PRIMARY KEY,
    id_chefe_cozinha INTEGER,
    FOREIGN KEY(id_chefe_cozinha) REFERENCES CHEFE_DE_COZINHA(id_chefe_cozinha)
);

CREATE TABLE ALIMENTO_TEM_CARDAPIO(
	dia_cardap DATE,
    nome_alim VARCHAR(60),
    FOREIGN KEY(dia_cardap) REFERENCES CARDAPIO(dia),
    FOREIGN KEY(nome_alim) REFERENCES ALIMENTO(nome),
    PRIMARY KEY(dia_cardap, nome_alim)
);

CREATE TABLE CNH(
	cnh INTEGER PRIMARY KEY,
    nivel_cnh CHAR,
    tempo_cnh DATE,
    id_manobrista INTEGER,
    FOREIGN KEY(id_manobrista) REFERENCES MANOBRISTA(id_manobrista)
);

CREATE TABLE PRODUTOS(
	descricao VARCHAR(100) PRIMARY KEY,
    categoria VARCHAR(100),
    preco FLOAT
);

CREATE TABLE HOSPEDE(
	cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    rg VARCHAR(20)
);

CREATE TABLE HOSPEDE_CONSOME_PRODUTOS(
	descricao VARCHAR(100),
	cpf_hospede CHAR(11),
    FOREIGN KEY(descricao) REFERENCES PRODUTOS(descricao),
    FOREIGN KEY(cpf_hospede) REFERENCES HOSPEDE(cpf),
    PRIMARY KEY(descricao, cpf_hospede)
);

CREATE TABLE CARRO(
	placa CHAR(7) PRIMARY KEY,
    modelo VARCHAR(60),
    cor VARCHAR(60),
    cpf_hosp CHAR(11),
    FOREIGN KEY(cpf_hosp) REFERENCES HOSPEDE(cpf)
);

CREATE TABLE MANOBRA_CARRO(
	placa_carro CHAR(7),
    id_manobrista INTEGER,
    FOREIGN KEY(placa_carro) REFERENCES CARRO(placa),
    FOREIGN KEY(id_manobrista) REFERENCES MANOBRISTA(id_manobrista),
    PRIMARY KEY(placa_carro, id_manobrista) 
);

CREATE TABLE HOSPEDAGEM(
	id_hosp INTEGER PRIMARY KEY,
    data DATE,
    status BOOLEAN,
    valor FLOAT,
    id_atendente INTEGER,
    FOREIGN KEY(id_atendente) REFERENCES ATENDENTE(id_atendente)
);

CREATE TABLE QUARTO(
	capacidade INTEGER PRIMARY KEY,
    andar INTEGER,
    status BOOLEAN,
    num_quarto INTEGER
);

CREATE TABLE CATEGORIA(
	tipo VARCHAR(60) PRIMARY KEY,
	descricao VARCHAR(100),
    nivel_cat INTEGER
);

CREATE TABLE QUARTO_POSSUI_CATEGORIA(
	cap_quarto INTEGER,
    tipo_cat VARCHAR(60),
    preco FLOAT,
    id_hospedagem INTEGER,
    FOREIGN KEY(cap_quarto) REFERENCES QUARTO(capacidade),
    FOREIGN KEY(tipo_cat) REFERENCES CATEGORIA(tipo),
    FOREIGN KEY(id_hospedagem) REFERENCES HOSPEDAGEM(id_hosp),
    PRIMARY KEY(cap_quarto, tipo_cat)
);

CREATE TABLE CAMAREIRA_LIMPA_QUARTO(
	id_camareira INTEGER,
    capacidade INTEGER,
    FOREIGN KEY(id_camareira) REFERENCES CAMAREIRA(id_camareira),
    FOREIGN KEY(capacidade) REFERENCES QUARTO(capacidade),
    PRIMARY KEY(id_camareira, capacidade)
);




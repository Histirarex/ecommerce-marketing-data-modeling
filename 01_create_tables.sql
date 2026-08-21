-- 1. Criação das Tabelas Dimensão

CREATE TABLE Dim_Clientes (
    sk_clientes INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente_origem VARCHAR(50),
    nome_cliente VARCHAR(100),
    perfil_cliente VARCHAR(50)
);

CREATE TABLE Dim_Regiao (
    sk_regiao INT IDENTITY(1,1) PRIMARY KEY,
    cidade VARCHAR(100),
    estado VARCHAR(50),
    pais VARCHAR(50)
);

CREATE TABLE Dim_Produtos (
    sk_produtos INT IDENTITY(1,1) PRIMARY KEY,
    id_produto_origem VARCHAR(50),
    nome_produto VARCHAR(100),
    departamento VARCHAR(50),
    categoria VARCHAR(50)
);

CREATE TABLE Dim_Midia (
    sk_midia INT IDENTITY(1,1) PRIMARY KEY,
    nome_campanha VARCHAR(100),
    origem_midia VARCHAR(50)
);

CREATE TABLE Dim_Tempos (
    sk_data INT PRIMARY KEY,
    data_completa DATE,
    ano SMALLINT,
    mes TINYINT,
    dia TINYINT
);

-- 2. Criação da Tabela Fato

CREATE TABLE Fato_Desempenho_Marketing(
    sk_clientes INT,
    sk_regiao INT,
    sk_produtos INT,
    sk_midia INT,
    sk_data INT,
    qtd_visitas INT,
    qtd_conversoes INT,
    qtd_abandonos INT,
    
    CONSTRAINT PK_Fato_Desempenho PRIMARY KEY (sk_clientes, sk_regiao, sk_produtos, sk_midia, sk_data),
    CONSTRAINT FK_Fato_Clientes FOREIGN KEY (sk_clientes) REFERENCES Dim_Clientes(sk_clientes),
    CONSTRAINT FK_Fato_Regiao FOREIGN KEY (sk_regiao) REFERENCES Dim_Regiao(sk_regiao),
    CONSTRAINT FK_Fato_Produto FOREIGN KEY (sk_produtos) REFERENCES Dim_Produtos(sk_produtos),
    CONSTRAINT FK_Fato_Midia FOREIGN KEY (sk_midia) REFERENCES Dim_Midia(sk_midia),
    CONSTRAINT FK_Fato_Tempo FOREIGN KEY (sk_data) REFERENCES Dim_Tempos(sk_data)
);

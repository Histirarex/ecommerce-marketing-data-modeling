-- Inserindo Dados Fictícios nas Dimensões

INSERT INTO Dim_Clientes (id_cliente_origem, nome_cliente, perfil_cliente) VALUES
('C001', 'Ana Clara Silva', 'VIP'),
('C002', 'Carlos Eduardo', 'Novo Cliente'),
('C003', 'Mariana Santos', 'Recorrente');

INSERT INTO Dim_Regiao (cidade, estado, pais) VALUES
('São Paulo', 'SP', 'Brasil'),
('Rio de Janeiro', 'RJ', 'Brasil'),
('Belo Horizonte', 'MG', 'Brasil');

INSERT INTO Dim_Produtos (id_produto_origem, nome_produto, departamento, categoria) VALUES
('P100', 'Smartphone Galaxy S23', 'Eletrônicos', 'Celulares'),
('P101', 'Notebook Dell XPS 13', 'Informática', 'Notebooks'),
('P102', 'Camisa de Algodão Branca', 'Moda', 'Vestuário');

INSERT INTO Dim_Midia (nome_campanha, origem_midia) VALUES
('Promoção de Inverno', 'Facebook Ads'),
('Busca Institucional', 'Google PPC'),
('Parceria Tech BR', 'Afiliados');

INSERT INTO Dim_Tempos (sk_data, data_completa, ano, mes, dia) VALUES
(20260820, '2026-08-20', 2026, 8, 20),
(20260821, '2026-08-21', 2026, 8, 21);

-- Inserindo Dados na Tabela Fato

INSERT INTO Fato_Desempenho_Marketing 
(sk_clientes, sk_regiao, sk_produtos, sk_midia, sk_data, qtd_visitas, qtd_conversoes, qtd_abandonos) 
VALUES
(1, 1, 1, 2, 20260820, 2, 1, 0), -- Ana comprou Smartphone via Google PPC
(2, 2, 2, 1, 20260820, 1, 0, 1), -- Carlos abandonou carrinho do Notebook via FB Ads
(3, 3, 3, 3, 20260821, 3, 2, 0), -- Mariana comprou Camisas via Afiliados
(1, 1, 2, 2, 20260821, 1, 0, 1); -- Ana voltou via Google e abandonou o Notebook

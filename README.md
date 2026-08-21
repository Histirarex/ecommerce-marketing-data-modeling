# Modelagem Dimensional para Análise de Marketing em E-commerce 📊

## 📌 O Problema de Negócio
Uma empresa de e-commerce precisava entender o retorno de suas campanhas de marketing (PPC, Afiliados, etc.). O desafio era centralizar e estruturar os dados de visitas, conversões e abandonos de carrinho, cruzando com informações de clientes, produtos e regiões geográficas para permitir análises rápidas e eficientes pelo time de negócios.

## 💡 A Solução (Arquitetura de Dados)
Desenvolvi um Data Warehouse utilizando modelagem dimensional (**Star Schema**) no **SQL Server**. 
A tabela Fato foi construída na granularidade de sessão de visita (uma linha por interação do cliente com o produto vindo de uma campanha específica em um determinado dia), cercada por 5 dimensões de contexto.

### Estrutura do Modelo Estrela:
- **Tabela Fato:** `Fato_Desempenho_Marketing` (Métricas: Visitas, Conversões e Abandonos).
- **Dimensões:** `Dim_Clientes`, `Dim_Regiao`, `Dim_Produtos`, `Dim_Midia`, `Dim_Tempos`.

## 🛠️ Tecnologias Utilizadas
- **Banco de Dados:** Microsoft SQL Server
- **Linguagem:** T-SQL (DDL e DML)
- **Conceitos:** Data Warehousing, Modelagem Dimensional, Chaves Substitutas (Surrogate Keys).

## 🚀 Como testar este projeto
1. Execute o script `01_create_tables.sql` para gerar o schema do banco.
2. Execute o script `02_insert_mock_data.sql` para popular as tabelas com dados fictícios.
3. Execute o script `03_analytical_queries.sql` para ver as análises de negócio rodando na prática!

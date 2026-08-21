-- Análise 1: Qual mídia gerou mais conversões?
SELECT 
    m.origem_midia,
    m.nome_campanha,
    SUM(f.qtd_visitas) AS Total_Visitas,
    SUM(f.qtd_conversoes) AS Total_Conversoes
FROM Fato_Desempenho_Marketing f
JOIN Dim_Midia m ON f.sk_midia = m.sk_midia
GROUP BY m.origem_midia, m.nome_campanha
ORDER BY Total_Conversoes DESC;

-- Análise 2: Qual é a taxa de abandono por departamento de produto?
SELECT 
    p.departamento,
    SUM(f.qtd_abandonos) AS Total_Abandonos,
    SUM(f.qtd_visitas) AS Total_Visitas,
    CAST(SUM(f.qtd_abandonos) AS FLOAT) / SUM(f.qtd_visitas) * 100 AS Taxa_Abandono_Percentual
FROM Fato_Desempenho_Marketing f
JOIN Dim_Produtos p ON f.sk_produtos = p.sk_produtos
GROUP BY p.departamento
ORDER BY Taxa_Abandono_Percentual DESC;

-- Análise 3: Desempenho geral por região geográfica
SELECT 
    r.estado,
    r.cidade,
    SUM(f.qtd_conversoes) AS Conversoes
FROM Fato_Desempenho_Marketing f
JOIN Dim_Regiao r ON f.sk_regiao = r.sk_regiao
GROUP BY r.estado, r.cidade
ORDER BY Conversoes DESC;

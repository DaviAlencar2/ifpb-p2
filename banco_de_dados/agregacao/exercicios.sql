-- Objetivo: Contar quantos funcionários do sexo masculino (M) e feminino (F) nasceram em cada cidade.

SELECT Cidade_Nascimento, 
       COUNT(CASE WHEN Sexo = 'M' THEN 1 END) AS Quantidade_Homens,
       COUNT(CASE WHEN Sexo = 'F' THEN 1 END) AS Quantidade_Mulheres
FROM Funcionarios
GROUP BY Cidade_Nascimento;


-- Objetivo: Para cada ID_Pedido, obter a maior quantidade de um único produto vendido nesse pedido.

SELECT ID_Pedido, MAX(Quantidade)
FROM Itens_Pedido
GROUP BY ID_Pedido
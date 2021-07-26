-- Como de costume o setor de vendas está fazendo uma análise de quantos produtos temos em estoque, e você poderá ajudar eles.
-- Então seu trabalho será exibir o nome e a quantidade de produtos de cada uma categoria.

SELECT categories.name, SUM (amount)
FROM categories
JOIN products
ON categories.id = products.id_categories
GROUP BY categories.name;



-- O setor de importação da nossa empresa precisa de um relatório sobre a importação de produtos do nosso fornecedor Sansul.
-- Sua tarefa é exibir o nome dos produtos, o nome do fornecedor e o nome da categoria, para os produtos fornecidos pelo fornecedor ‘Caroline’ 
-- e cujo nome da categoria seja 'Executive'.

SELECT * FROM products;
SELECT * FROM providers;
SELECT * FROM categories;

SELECT products.name, providers.name, categories.name
FROM products
JOIN providers ON providers.id = products.id_providers
JOIN categories ON categories.id = products.id_categories
AND providers.name = 'Caroline Silva'





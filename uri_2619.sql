-- A nossa empresa está querendo fazer um novo contrato para o fornecimento de novos produtos superluxuosos, 
-- e para isso precisamos de alguns dados dos nossos produtos.
-- Seu trabalho é exibir o nome dos produtos, nome dos fornecedores e o preço, 
-- para os produtos cujo preço seja maior que 1000 e sua categoria seja ‘Super Luxury.

-- Atualizando os dados da tabela para trabalhar a questão
UPDATE products SET price = 2000.00
WHERE id = 2;

-- query
SELECT products.name, providers.name, products.price
FROM products
JOIN providers ON providers.id = products.id_providers
JOIN categories ON categories.id = products.id_categories
WHERE price > 1000.00 AND id_categories = 9



-- A locadora tem objetivos de criar várias franquias espalhadas pelo Brasil. Para isso queremos saber em quais cidades nossos clientes moram.
-- Para você nos ajudar selecione o nome de todas as cidades onde a locadora tem clientes. Mas por favor, não repita o nome da cidade.

-- Alterando uma das cidades adicionada na tabela para gerar duplicidade. 

UPDATE customers_locadora 
SET city = 'Uberlândia'
WHERE id = 4;

SELECT * FROM customers_locadora;

-- query:
SELECT DISTINCT city
FROM customers_locadora;



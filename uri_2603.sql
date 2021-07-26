-- A empresa fará um evento comemorando os 20 anos de mercado, e para isso faremos uma grande comemoração na cidade de Porto Alegre. 
-- Queremos também convidar todos os nossos clientes que estão cadastrados nessa cidade.
-- O seu trabalho é nos passar os nomes e os endereços dos clientes que moram em 'Porto Alegre', para entregar os convites pessoalmente.

ALTER TABLE costumers RENAME TO customers; -- corrigindo o nome da tabela.

SELECT name, street
FROM customers 
WHERE city = 'Porto Alegre';



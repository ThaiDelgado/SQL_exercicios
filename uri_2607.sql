-- Todos os meses a empresa pede um relatório das cidades que os fornecedores estão cadastrados. 
-- Dessa vez não vai ser diferente, faça uma consulta no Banco de Dados que retorne todas as cidades dos fornecedores, mas em ordem alfabética.
-- OBS: Você não deve mostrar cidades repetidas.

-- inserindo um estado que se repita na tabela.
INSERT INTO providers (id, name, street, city, state) VALUES (7, 'Delgado e Cia', 'Fonseca Guimarães', 'Rio de Janeiro', 'RJ');

-- query
SELECT DISTINCT city 
FROM providers 
ORDER BY city ASC;


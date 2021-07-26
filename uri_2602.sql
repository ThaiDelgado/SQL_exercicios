-- Sua empresa está fazendo um levantamento de quantos clientes estão cadastrados nos estados, porém, faltou levantar os dados do estado do Rio Grande do Sul.
-- Então você deve Exibir o nome de todos os clientes cujo estado seja ‘RS’.

CREATE TABLE IF NOT EXISTS costumers (
	id SMALLINT NOT NULL,
	name VARCHAR (80) NOT NULL,
	street  VARCHAR (120) NOT NULL,
	city VARCHAR (50) NOT NULL,
	state CHAR (2) NOT NULL,
	credit_limit NUMERIC (10,2) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO costumers (id, name, street, city, state, credit_limit) VALUES (1, 'Pedro Augusto da Costa', 'Rua Pedro Carlos Holffman', 'Porto Alegre', 'RS', 700.00);
INSERT INTO costumers (id, name, street, city, state, credit_limit) VALUES (2, 'Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50);
INSERT INTO costumers (id, name, street, city, state, credit_limit)	VALUES (3, 'Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00);
INSERT INTO costumers (id, name, street, city, state, credit_limit) VALUES (4, 'Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', 800.00);
INSERT INTO costumers (id, name, street, city, state, credit_limit) VALUES (5, 'Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', 4250.25);

SELECT * FROM costumers;

SELECT name 
FROM costumers
WHERE state = 'RS';
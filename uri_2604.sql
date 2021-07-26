-- O setor financeiro da empresa precisa de um relatório que mostre o código e o nome dos produtos cujo preço são menores que 10 ou maiores que 100.

CREATE TABLE products ( 
	id SMALLSERIAL NOT NULL,
	name VARCHAR (50) NOT NULL,
	amount INT NOT NULL,
	price NUMERIC (7,2),
	PRIMARY KEY (id)
);

INSERT INTO products (id, name, amount, price) VALUES (1, 'Two-door wardrobe', 100, 80);
INSERT INTO products (id, name, amount, price) VALUES (2, 'Dining table', 1000, 560);
INSERT INTO products (id, name, amount, price) VALUES (3, 'Towel holder', 10000, 5.50);
INSERT INTO products (id, name, amount, price) VALUES (4, 'Computer desk', 350, 100);
INSERT INTO products (id, name, amount, price) VALUES (5, 'Chair', 3000, 210.64);
INSERT INTO products (id, name, amount, price) VALUES (6, 'Single bed', 750, 99);

SELECT id, name
FROM products 
WHERE price < 10 OR price > 100;

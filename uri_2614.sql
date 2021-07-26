-- A vídeo locadora está fazendo seu relatório semestral e precisa da sua ajuda. 
-- Basta você selecionar o nome dos clientes e a data de locação, das locações realizadas no mês de setembro de 2016.

CREATE TABLE IF NOT EXISTS costumers_locadora (
	id SMALLINT NOT NULL,
	name VARCHAR (50) NOT NULL,
	street VARCHAR (80) NOT NULL,
	city VARCHAR (50) NOT NULL,
	PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS rentals (
	id_rental SMALLINT NOT NULL,
	rental_date DATE NOT NULL,
	id_costumers_locadora SMALLINT NOT NULL,
	PRIMARY KEY (id_rental),
	FOREIGN KEY (id_costumers_locadora) REFERENCES costumers_locadora
)

INSERT INTO costumers_locadora (id, name, street, city) VALUES (1, 'Giovanna Goncalves Oliveira', 'Rua Mato', 'Grosso');
INSERT INTO costumers_locadora (id, name, street, city) VALUES (2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia');
INSERT INTO costumers_locadora (id, name, street, city) VALUES (3, 'Rebeca Barbosa Santos',	'Rua Observatório Meteorológico', 'Salvador');
INSERT INTO costumers_locadora (id, name, street, city) VALUES (4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana');
INSERT INTO costumers_locadora (id, name, street, city) VALUES (5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa');
INSERT INTO costumers_locadora (id, name, street, city) VALUES (6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');

INSERT INTO rentals (id_rental, rental_date, id_costumers_locadora) VALUES (1, '2016-10-09', 3);
INSERT INTO rentals (id_rental, rental_date, id_costumers_locadora) VALUES (2, '2016-09-02', 1);
INSERT INTO rentals (id_rental, rental_date, id_costumers_locadora) VALUES (3, '2016-08-02', 4);
INSERT INTO rentals (id_rental, rental_date, id_costumers_locadora) VALUES (4, '2016-08-02', 2);
INSERT INTO rentals (id_rental, rental_date, id_costumers_locadora) VALUES (5, '2016-03-02', 6);
INSERT INTO rentals (id_rental, rental_date, id_costumers_locadora) VALUES (6, '2016-04-04', 4);
																
SELECT rentals.rental_date, costumers_locadora.name
FROM rentals
JOIN costumers_locadora
ON costumers_locadora.id = rentals.id_costumers_locadora
AND EXTRACT (MONTH FROM rental_date) = 09;
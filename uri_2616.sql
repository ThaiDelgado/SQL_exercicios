SELECT * FROM customers_locadora
ORDER BY ID ASC;

CREATE TABLE IF NOT EXISTS locations(
	id SMALLINT NOT NULL,
	locations_date DATE NOT NULL,
	id_customers SMALLINT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id_customers) REFERENCES customers_locadora (id)
);

INSERT INTO locations (id, locations_date, id_customers) VALUES (1, '2016-10-09', 3);
INSERT INTO locations (id, locations_date, id_customers) VALUES (2, '2016-09-02', 1);
INSERT INTO locations (id, locations_date, id_customers) VALUES (3, '2016-08-02', 4);
INSERT INTO locations (id, locations_date, id_customers) VALUES (4, '2016-09-02', 2);
INSERT INTO locations (id, locations_date, id_customers) VALUES (5, '2016-03-02', 6);
INSERT INTO locations (id, locations_date, id_customers) VALUES (6, '2016-04-04', 4);

-- query:			
SELECT customers_locadora.id, customers_locadora.name 
FROM customers_locadora 
WHERE NOT EXISTS (
	SELECT id_customers 
	FROM locations 
	WHERE id_customers = customers_locadora.id);





-- Uma Vídeo locadora contratou seus serviços para catalogar os filmes dela. 
-- Eles precisam que você selecione o código e o nome dos filmes cuja descrição do gênero seja 'Action'.

CREATE TABLE IF NOT EXISTS genres (
	id SMALLINT NOT NULL,
	description VARCHAR (50),
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS movies (
	id SMALLINT NOT NULL,
	name VARCHAR (80) NOT NULL,
	genres_id SMALLINT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (genres_id) REFERENCES genres (id)
);

INSERT INTO genres (id, description) VALUES (1, 'animation');
INSERT INTO genres (id, description) VALUES (2, 'Horror');
INSERT INTO genres (id, description) VALUES (3, 'Action');
INSERT INTO genres (id, description) VALUES (4, 'Drama');
INSERT INTO genres (id, description) VALUES (5, 'Comedy');

INSERT INTO movies (id, name, genres_id) VALUES (1, 'Batman', 3);
INSERT INTO movies (id, name, genres_id) VALUES (2, 'The Battle of the Dark River', 3);
INSERT INTO movies (id, name, genres_id) VALUES (3, 'White Duck', 1);
INSERT INTO movies (id, name, genres_id) VALUES (4,	'Breaking Barriers', 4);
INSERT INTO movies (id, name, genres_id) VALUES (5,	'The Two Hours', 2);

SELECT * FROM movies;

SELECT movies.id, movies.name
FROM movies
JOIN genres
ON genres.id = movies.genres_id
AND genres.description ILIKE ('%action%');
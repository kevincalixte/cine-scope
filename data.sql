-- Suppression des tables si elles existent
DROP TABLE IF EXISTS film_platforme;
DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS platforme;
DROP TABLE IF EXISTS user;

-- Création des tables
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(180) NOT NULL UNIQUE,
    roles JSON NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE platforme (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL
);

CREATE TABLE film (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    synopsis TEXT,
    release_year INT,
    type_media VARCHAR(50),
    platforme_id INT,
    FOREIGN KEY (platforme_id) REFERENCES platforme(id)
);

CREATE TABLE film_platforme (
    film_id INT,
    platforme_id INT,
    PRIMARY KEY (film_id, platforme_id),
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (platforme_id) REFERENCES platforme(id)
);

-- Insertion des utilisateurs
INSERT INTO user (email, roles, password) VALUES
('alice@example.com', '["ROLE_USER"]', '$2y$10$abcdefghijklmno1'),
('bob@example.com', '["ROLE_USER"]', '$2y$10$abcdefghijklmno2'),
('carol@example.com', '["ROLE_USER"]', '$2y$10$abcdefghijklmno3'),
('dave@example.com', '["ROLE_USER"]', '$2y$10$abcdefghijklmno4'),
('eve@example.com', '["ROLE_USER"]', '$2y$10$abcdefghijklmno5'),
('frank@example.com', '["ROLE_USER"]', '$2y$10$abcdefghijklmno6'),
('grace@example.com', '["ROLE_USER"]', '$2y$10$abcdefghijklmno7'),
('heidi@example.com', '["ROLE_USER"]', '$2y$10$abcdefghijklmno8'),
('ivan@example.com', '["ROLE_USER"]', '$2y$10$abcdefghijklmno9'),
('judy@example.com', '["ROLE_USER"]', '$2y$10$abcdefghijklmnoA');

-- Insertion des plateformes
INSERT INTO platforme (nom) VALUES
('Netflix'),
('Amazon Prime'),
('Disney+'),
('HBO Max'),
('Apple TV+');

-- Insertion des films
INSERT INTO film (title, synopsis, release_year, type_media, platforme_id) VALUES
('Inception', 'A mind-bending thriller', 2010, 'FILM', 1),
('The Mandalorian', 'A Star Wars series', 2019, 'SERIE', 3),
('The Boys', 'Superheroes gone bad', 2019, 'SERIE', 2),
('Game of Thrones', 'Epic fantasy drama', 2011, 'SERIE', 4),
('Ted Lasso', 'Comedy about football', 2020, 'SERIE', 5),
('Interstellar', 'Space exploration', 2014, 'FILM', 1),
('The Witcher', 'Monster hunter saga', 2019, 'SERIE', 1),
('Jack Ryan', 'CIA analyst action', 2018, 'SERIE', 2),
('Loki', 'Marvel time travel', 2021, 'SERIE', 3),
('Chernobyl', 'Nuclear disaster drama', 2019, 'SERIE', 4);

-- Insertion des liens film/plateforme
INSERT INTO film_platforme (film_id, platforme_id) VALUES
(1, 1), (2, 3), (3, 2), (4, 4), (5, 5),
(6, 1), (7, 1), (8, 2), (9, 3), (10, 4);

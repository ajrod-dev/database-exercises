USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    song VARCHAR(50) NOT NULL,
    release_date INT UNSIGNED NOT NULL,
    sales FLOAT UNSIGNED,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);




USE codeup_test_db;


DROP TABLE albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(200),
        name VARCHAR(150),
    release_date INT(4),
        sales FLOAT(9),
    genre VARCHAR(300),
    PRIMARY KEY (id)
);
--
-- id — auto-incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)

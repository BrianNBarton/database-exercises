USE codeup_test_db;

select 'The name of all albums by Pink Floyd.' AS 'Exercise 1';

SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE NAME = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums
WHERE 'name' = "Nevermind";

SELECT 'name' FROM albums

WHERE release_date BETWEEN 1990 AND 1999;

SELECT `name` FROM albums
WHERE sales < 20;

SELECT `name`, genre
FROM albums
WHERE genre = 'Rock';
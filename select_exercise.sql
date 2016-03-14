USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS 'Info';
SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'The genre for Nevermind' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT 'Which albums were released in the 1990s' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 1900-01-01 AND 1999-01-01;
SELECT 'Which albums had less than 20 million certified sales' AS 'Info';
SELECT name FROM albums WHERE sales < 20.0;
SELECT 'All the albums in the rock genre' AS 'Info';
SELECT name FROM albums WHERE genre LIKE ('%rock%');
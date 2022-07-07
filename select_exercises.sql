USE codeup_test_db;

    -- The name of all albums by Pink Floyd.
SELECT 'Pink Floyd albums' AS 'Caption';
SELECT name FROM albums WHERE artist = 'Pink Floyd';
    /*The year Sgt. Pepper's Lonely Hearts Club Band was released */
SELECT 'Sgt. Peppers Lonely Hearts Club Band release date' AS 'Caption';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
    -- The genre for Nevermind
SELECT 'The genre for Nevermind' AS 'Caption';
SELECT genre FROM albums WHERE name = 'Nevermind';
    -- Which albums were released in the 1990s
SELECT 'Albums released in the 90s' AS 'Caption';
SELECT name FROM albums WHERE release_date >= 1990;
    -- Which albums had less than 20 million certified sales
SELECT 'Albums with less than 20 mill in sales' AS 'Caption';
SELECT name FROM albums WHERE sales < 20;
    -- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT 'Albums with genre as rock' AS 'Caption';
SELECT name FROM albums WHERE genre = 'Rock';
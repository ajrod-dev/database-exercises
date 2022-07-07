USE codeup_test_db;

/*  Albums released after 1991
    Albums with the genre 'disco'
    Albums by 'Meat Loaf' (...or maybe an artist of your choice)
*/
SELECT 'Albums released after 1991' AS 'CAPTION';
DELETE FROM albums WHERE release_date > 1991;
SELECT 'Albums with the genre disco' AS 'CAPTION';
DELETE FROM albums WHERE genre = 'disco';
SELECT 'Albums by ''Meat Loaf''' AS 'CAPTION';
DELETE FROM albums WHERE artist = 'Meat Loaf';
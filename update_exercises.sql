USE codeup_test_db;

-- All albums in your table.
SELECT name, sales FROM albums\G
UPDATE albums
SET sales = sales * 10;
-- All albums released before 1980
SELECT name FROM albums WHERE release_date < 1980\G
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
/*All albums by Michael Jackson*/
SELECT name FROM albums where artist = 'Michael Jackson'\G
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums\G

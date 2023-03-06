use codeup_test_db;
truncate albums;
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Led Zeppelin', 'Led Zeppelin IV', 1971, 30.4, 'Hard rock, heavy metal, folk rock'),
       ('Michael Jackson', 'Bad', 1987, 21.1, 'Pop, rhythm and blues, funk and rock'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 22.0, 'Hard rock, glam rock, progressive rock'),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 25.4, 'Alternative rock'),
       ('Various artists', 'Dirty Dancing', 1987, 24.1, 'Pop, rock, R&B'),
       ('Celine Dion', 'Falling into You', 1996, 21.1, 'Pop, soft rock'),
       ('Adele', '21', 2011, 27.1, 'Pop, soul'),
       ('The Beatles', '1', 2000, 23.2, 'Rock'),
       ('Metallica', 'Metallica', 1991, 22.7, 'Heavy metal'),
       ('Celine Dion', 'Let''s Talk About Love', 1997, 19.5, 'Pop, soft rock'),
       ('Bob Marley & The Wailers', 'Legend: The Best of Bob Marley & The Wailers', 1984, 22.9, 'Reggae'),
       ('Guns N'' Roses', 'Appetite for Destruction', 1987, 22.8, 'Hard rock'),
       ('Bruce Springsteen', 'Born in the U.S.A.', 1984, 22.0, 'Heartland rock'),
       ('ABBA', 'Gold: Greatest Hits', 1992, 21.6, 'Pop disco'),
       ('Dire Straits', 'Brothers in Arms', 1985, 21.1, 'Roots rock, blues rock, soft rock'),
       ('Santana', 'Supernatural', 1999, 20.8, 'Latin rock'),
       ('Madonna','The Immaculate Collection',1990,19.8,'Pop, dance'),
       ('Pink Floyd','The Wall',1979,18.9,'Progressive rock'),
       ('The Beatles','Sgt. Pepper''s Lonely Hearts Club Band',1967,18.3,'Rock'),
       ('Michael Jackson','Dangerous',1991,17.0,'New jack swing, R&B and pop'),
       ('The Beatles','Abbey Road',1969,16.9,'Rock');

use codeup_test_db;

#     --caption: name of all albums by pink floyd
    select name from albums where artist = 'pink floyd';
#     --caption: The year Sgt. Pepper's Lonely Hearts Club Band was released
    select release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';
#     --caption: The genre for Nevermind

#     --caption: Which albums were released in the 1990s
    select all name from albums where release_date between 1990 and 1999;
#     --caption: Which albums had less than 20 million certified sales
    select *, name from albums where sales < 20;
#     --caption: All the albums with a genre of "Rock".
select *, name from albums where genre = 'rock';
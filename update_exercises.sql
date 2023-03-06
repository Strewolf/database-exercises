select * from albums;
update albums set sales = sales * 10;
select * from albums where release_date < 1980;
update albums set release_date = release_date - 100 where release_date < 1980;
select * from albums where artist = 'michael jackson';
update albums set artist = 'Peter Jackson' where artist = 'michael jackson';
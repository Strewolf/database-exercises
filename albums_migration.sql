create database if not exists codeup_test_db;
use codeup_test_db;

drop table if exists albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR (50) DEFAULT 'none',
    name VARCHAR (50) NOT NULL,
    release_date INT UNSIGNED NOT NULL,
    sales FLOAT UNSIGNED NOT NULL,
    genre TEXT NOT NULL,
    PRIMARY KEY (id)
);
use codeup_test_db;
describe albums;
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

CREATE TABLE Movie (
  ID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
  Title nvarchar(100) NOT NULL,
  Rating nvarchar(5) NOT NULL,
  Year int,
  Director nvarchar(50) NOT NULL
  );

CREATE TABLE Genre (
  ID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
  Name varchar(10)
  );

CREATE TABLE Actor (
  ID INT PRIMARY KEY  UNIQUE AUTO_INCREMENT,
  FirstName nvarchar(25) NOT NULL,
  LastName nvarchar(25) NOT NULL,
  Gender varchar(6),
  Birthdate date
);

CREATE TABLE Credits (
  ID INT UNIQUE PRIMARY KEY AUTO_INCREMENT,
  MovieID int,
  ActorID int,
  Role varchar(255),
Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);

CREATE TABLE Moviegenre (
  ID INT UNIQUE PRIMARY KEY AUTO_INCREMENT,
  MovieID int,
  GenreID int,
    FOREIGN KEY (MovieID) REFERENCES Movie(ID),
	FOREIGN KEY (GenreID) REFERENCES Genre(ID)
);

INSERT INTO Movie VALUES
(1, 'Snatch', 'PG-18', '1999', 'Guy Ritchie'),
(2, 'Unce Upon A Time in America', 'PG-18', '1984', 'Sergio Leone'),
(3, 'Back to the Future', 'PG-12', '1985', 'Robert Zemeckis');

INSERT INTO Genre VALUES
(1, 'Comedy'),
(2, 'Drama'),
(3, 'Action'),
(4, 'Thriller'),
(5, 'Adventure');

INSERT INTO Actor VALUES
(1, 'Robert', 'De Niro','Male', '1960-9-01'),
(2, 'Brad', 'Pitt','Male', '1960-9-01'),
(3, 'Julia', 'Roberts','Female', '1968-2-06'),
(4, 'Arnold', 'Schwarzenegger ','Male', '1947-07-30');

INSERT INTO Credits VALUES
(1, '1', '2', 'Jimmy'),
(2, '2', '1', 'Doctor'),
(3, '1', '3', 'Billy'),
(4, '3', '4', 'Terminator');

INSERT INTO MovieGenre VALUES
(1, '1', '3'),
(2, '2', '1'),
(3, '2', '2'),
(4, '3', '4'),
(5, '3', '2');



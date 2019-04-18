DROP DATABASE IF EXISTS sdb;
CREATE DATABASE sdb;
USE sdb;

CREATE TABLE Student (
  ID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
  FirstName nvarchar(25) NOT NULL,
  LastName nvarchar(30) NOT NULL,
  StreetAddress nvarchar(30) NOT NULL,
  City nvarchar(30) NOT NULL,
  State nvarchar(30) NOT NULL,
  Zip nvarchar(5) NOT NULL,
  Birthdate date NOT NULL,
  PhoneNumber nvarchar(12) NOT NULL,
  Email nvarchar(30) NOT NULL,
  SSN nvarchar(11) NOT NULL
);

CREATE TABLE Course (
  ID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
  Number INT UNIQUE,
  Subject nvarchar(50) NOT NULL,
  Name nvarchar(25) NOT NULL
  );

CREATE TABLE Instructor (
  ID INT PRIMARY KEY  UNIQUE AUTO_INCREMENT,
  CourseID int,
  InstructorFirstName nvarchar(25) NOT NULL,
  InstructorLastName nvarchar(25) NOT NULL
);

CREATE TABLE Enrollment (
  ID INT UNIQUE PRIMARY KEY AUTO_INCREMENT,
  StudentID int,
  CourseID int,
  Grade decimal(5,2),
    FOREIGN KEY (StudentID) REFERENCES Student (ID),
	FOREIGN KEY (CourseID) REFERENCES Course (ID)
);

INSERT INTO Student VALUES
(1, 'John', 'Dow', '111 Main St', 'Boston', 'MA', '11111', '2018-03-08','513-111-1111','jdow@gmail.com', '111-11-1111'),
(2, 'Michael', 'Brown', '111 State St', 'New York', 'NY', '22222', '2018-03-07','222-111-1111','334432@gmail.com', '222-11-1111'),
(3, 'Kate', 'Spread', '333 Elm St', 'Orlando', 'FL', '33333', '2018-03-06','333-111-1111','34329292@gmail.com', '333-11-1111'),
(4, 'Sue', 'Bold', '444 Broadway St', 'Chicago', 'IL', '44444', '2018-03-05','444-111-1111', '44535322@gmail.com', '444-11-1111'),
(5, 'Sandy', 'Wassernam', '555 Palm St', 'Tampa', 'FL', '55555', '2018-03-04','555-111-1111', '12ffd8w@gmail.com', '555-11-1111');

INSERT INTO Course VALUES
(1, '0012', 'Astronomy', 'Stars and Universe'),
(2, '1207', 'Athletic', 'Powerlifting'),
(3, '3409', 'Music', 'Violin for beginners');

INSERT INTO Instructor VALUES
(1, '2', 'Jason','Smith'),
(2, '2', 'Andrew','Goldberg');

INSERT INTO Enrollment VALUES
(1, '2', '3', '2'),
(2, '3', '2', '3'),
(3, '5', '2', '4');


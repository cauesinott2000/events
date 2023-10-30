DROP DATABASE IF EXISTS events;

CREATE DATABASE events;

CREATE TABLE User (
	ID int NOT NULL,
	email varchar(255) NOT NULL,
	name varchar(255),
	PRIMARY KEY (ID)
);

CREATE TABLE Event (
	ID int NOT NULL,
	UserID int,
	name varchar(255),
	description varchar(255),
	PRIMARY KEY (ID)
	FOREIGN KEY (UserID) REFERENCES User(ID)
);


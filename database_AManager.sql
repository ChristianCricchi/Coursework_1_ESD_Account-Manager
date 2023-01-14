CREATE DATABASE AManager;
use AManager;

CREATE TABLE account(
    IdAccount int not null AUTO_INCREMENT,
    TypeAccount varchar(15) NOT NULL,
    PRIMARY KEY(IdAccount)
);


INSERT INTO account(TypeAccount)
VALUES("Student");
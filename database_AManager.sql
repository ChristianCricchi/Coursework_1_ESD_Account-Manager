/*Create the database*/
CREATE DATABASE AManager;
use AManager;

/*
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| AManager           |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.02 sec
*/

/*
mysql> use AManager;
Database changed
*/

/*Create table*/
CREATE TABLE account(
    IdAccount int not null AUTO_INCREMENT,
    TypeAccount varchar(15) NOT NULL,
    PRIMARY KEY(IdAccount)
);

/*Create a new table*/
CREATE TABLE payment(
    CardHoldName varchar(100) NOT NULL,
    CardNumber int NOT NULL,
    ExpireDa int,
    PRIMARY KEY(CardHoldName)
);

CREATE TABLE clubRepresentative(
    ClubRepId int not null,
    Pass varchar(100),
    FirtsName varchar(100),
    LastName varchar(100),
    DoB date,
    PRIMARY KEY(ClubRepId)
);

CREATE TABLE studentClub(
    ClubId int not null,
    ClubName varchar(100),
    Address varchar(100),
    City varchar(100),
    Phone int(20),
    mobile int(20),
    PRIMARY KEY(ClubId)
);

/*
Show tables:
mysql> show tables;
+--------------------+
| Tables_in_AManager |
+--------------------+
| account            |
| clubRepresentative |
| payment            |
| studentClub        |
+--------------------+
4 rows in set (0.01 sec)
*/


/*
Read tables:
mysql> select * from account;
+-----------+-------------+
| IdAccount | TypeAccount |
+-----------+-------------+
|         1 | Student     |
+-----------+-------------+
1 row in set (0.01 sec)
*/



/*Update table*/
/*Update table*/
INSERT INTO account(TypeAccount)
VALUES("Student"),("NonStudent"),("NonStudent"),("NonStudent"),("Student") ,("Student"),("Student"),("Student");

/*
mysql> select * from account;
+-----------+-------------+
| IdAccount | TypeAccount |
+-----------+-------------+
|         1 | Student     |
|         2 | Student     |
|         3 | NonStudent  |
|         4 | NonStudent  |
|         5 | NonStudent  |
|         6 | Student     |
|         7 | Student     |
|         8 | Student     |
|         9 | Student     |
+-----------+-------------+
9 rows in set (0.00 sec)
*/

INSERT INTO payment(CardHoldName, CardNumber, ExpireDa)
VALUES("Mary Ann", 114, 22011025), ("Chris White", 112, 23010025), ("Alice Rossi", 113, 23012023);

/*
mysql> select * from payment;
+--------------+------------+----------+
| CardHoldName | CardNumber | ExpireDa |
+--------------+------------+----------+
| Alice Rossi  |        113 | 23012023 |
| Chris White  |        112 | 23010025 |
| JOHN Brown   |        111 | 23011025 |
| JOHN SMITH   |          1 | 23012025 |
| Mary Ann     |        114 | 22011025 |
+--------------+------------+----------+
5 rows in set (0.00 sec)
*/

/* UPDATE Table*/
UPDATE account
SET TypeAccount='Student'
WHERE TypeAccount='NonStudent';

/*
mysql> UPDATE account
    -> SET TypeAccount='Student'
    -> WHERE TypeAccount='NonStudent';
Query OK, 3 rows affected (0.05 sec)
Rows matched: 3  Changed: 3  Warnings: 0
*/

/*Delete */

/*
mysql> DELETE FROM payment WHERE CardHoldName='Alice Rossi';
Query OK, 1 row affected (0.02 sec)

mysql> select * from payment;
+--------------+------------+----------+
| CardHoldName | CardNumber | ExpireDa |
+--------------+------------+----------+
| Alice Rossi  |        113 | 23012023 |
| Chris White  |        112 | 23010025 |
| JOHN Brown   |        111 | 23011025 |
| JOHN SMITH   |          1 | 23012025 |
| Mary Ann     |        114 | 22011025 |
+--------------+------------+----------+
5 rows in set (0.00 sec)

mysql> select * from payment;
+--------------+------------+----------+
| CardHoldName | CardNumber | ExpireDa |
+--------------+------------+----------+
| Chris White  |        112 | 23010025 |
| JOHN Brown   |        111 | 23011025 |
| JOHN SMITH   |          1 | 23012025 |
| Mary Ann     |        114 | 22011025 |
+--------------+------------+----------+
4 rows in set (0.01 sec)
*/




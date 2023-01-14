Account Manager 
====

In this implementation of the account manager I created an image in Docker, I created a container, inside this container I implemented my database.

1. I created a Dockerfile in Visual Studio Code:
* Create the application image by using the base image of last version of mysql
FROM mysql:latest

* Environment variable 
ENV MYSQL_ROOT_PASSWORD=root

* COPY command copy a a file inside a directory into the image 
COPY ./database_AccountManager.sql /docker-entrypoint-initdb.d/


2. I created an image with the following command:
* docker build -t mysql_db .


# Create the application image by using the base image of last version of mysql
FROM mysql:latest

# Environment variable 
ENV MYSQL_ROOT_PASSWORD=root

# COPY command copy a a file inside a directory into the image 
COPY ./database_AccountManager.sql /docker-entrypoint-initdb.d/

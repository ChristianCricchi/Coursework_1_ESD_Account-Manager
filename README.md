Account Manager 
====

In this implementation of the account manager I created an image in Docker, I created a container, inside this container I implemented my database.

1. I created a Dockerfile in Visual Studio Code:
With this command I create the image by using the base image of last version of mysql.
* FROM mysql:latest

I create the environment variable. 
* ENV MYSQL_ROOT_PASSWORD=root

the COPY command copy a file inside a directory into the image. 
* COPY ./database_AccountManager.sql /docker-entrypoint-initdb.d/


2. I created an image with the following command:
* docker build -t mysql_db .

3. I checked the image with this command:
* docker images

4. I runed the container:
* docker run mysql_db

The container is running:
* PS D:\Docker\CW_Account_Manager> docker container ls
CONTAINER ID   IMAGE      COMMAND                  CREATED         STATUS         PORTS                 NAMES
a9c825af1149   mysql_db   "docker-entrypoint.s…"   2 minutes ago   Up 2 minutes   3306/tcp, 33060/tcp   determined_ritchie

At this point I accessed at this container:
* docker exec -it a9c825af1149 /bin/bash

now I saw what there is inside the container:
* bash-4.4# ls

*bin   dev                         entrypoint.sh  home  lib64  mnt  proc  run   srv  tmp  var
boot  docker-entrypoint-initdb.d  etc            lib   media  opt  root  sbin  sys  usr

5. I went inside the docker file:
* ash-4.4# cd docker-entrypoint-initdb.d

Inside there is my database:
* bash-4.4# ls

database_AManager.sql

* bash-4.4# mysql -proot

mysql> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| AManager           |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.03 sec

At this point I create the CRUD of the database.






# start to create the application image by using the base image of python 10
FROM python:3.10-slim 


# When you have specified the base image, I set the the 
# working directory inside the container.

WORKDIR /app

# COPY command copy a a file inside a directory into the image 
# Copy the requirements.txt file into the current working directory
COPY requirements.txt ./

# Run the pip inside the image, install all the pakage inside the txt file
RUN pip install -r requirements.txt

# Copy the contents of my current working dirtectory in 
# my host machine.
# The second dot means copy all local contents into the current directory inside the image
COPY . .

# Ask the containers to the port 8000 (this port is inside the container)
EXPOSE 8000

# Command instructions
CMD [ "python", "manage.py", "runserver" ] 


# Next is to build the image with this code:
# (CW) PS C:\Users\vivia\CW> docker build -t coursework:v1.0  

At this point I had this error  and I can not solve it.

(CW) PS C:\Users\vivia\CW> docker build -t coursework:1.0 . 
[+] Building 1.0s (3/3) FINISHED
 => [internal] load build definition from Dockerfile                         0.1s 
 => => transferring dockerfile: 32B                                          0.0s 
 => [internal] load .dockerignore                                            0.0s 
 => => transferring context: 2B                                              0.0s 
 => ERROR [internal] load metadata for docker.io/library/python:3.10-slim    0.7s 
------
 > [internal] load metadata for docker.io/library/python:3.10-slim:
------
failed to solve with frontend dockerfile.v0: failed to create LLB definition: rpc 
error: code = Unknown desc = error getting credentials - err: exec: "docker-credential-desktop": executable file not found in %PATH%, out: ``
(CW) PS C:\Users\vivia\CW> 

I will continue to work to solve and finish the work.


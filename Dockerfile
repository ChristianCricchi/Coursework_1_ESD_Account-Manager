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



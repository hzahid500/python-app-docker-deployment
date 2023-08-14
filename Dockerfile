# use an official docker image as the base image, in this case its a python image
FROM python:3.9-slim-buster

# set the working directory in the container
WORKDIR /app

# copy the requirements.txt file to the working directory
COPY requirements.txt .

# install the required python packages within the requirements.txt file
RUN pip3 install --no-cache-dir -r requirements.txt

# copy the application code to the working directory
COPY . .

# set environment variables for the Flask app
ENV FLASK_RUN_HOST=0.0.0.0

# expose the port on which the Flask app will run
EXPOSE 5000

# start the Flask app when the container is ran
CMD ["flask", "run"]



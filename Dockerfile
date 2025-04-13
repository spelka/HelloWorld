#FROM python:3.9-slim

#WORKDIR /app

#COPY requirements.txt requirements.txt
#RUN pip install --no-cache-dir -r requirements.txt

#COPY . .

#CMD ["python", "hello.py"]


# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
#COPY . /app

# Copy the hello.py file from your app folder into the container's /app directory
COPY ./app/hello.py /app/

# Copy requirements.txt from your local /app directory into the container's /app directory
COPY ./app/requirements.txt /app/

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=hello.py

# Run app.py when the container launches
CMD ["flask", "run", "--host=0.0.0.0"]

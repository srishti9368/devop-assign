 # Use an official Python runtime as a parent image
 FROM python:3.9-slim

 # Set the working directory in the container
 WORKDIR /assign
 
 # Copy the current directory contents into the container at /app
 COPY . /main
 
 # Install any needed packages specified in requirement.txt
 RUN pip install --no-cache-dir -r requirement.txt
 
 # Make port 5003 available to the world outside this container
 EXPOSE 5003
 
 # Define environment variable
 ENV assign-main=main.py
 
 # Run app.py when the container launches
 CMD ["python", "main.py"]
 

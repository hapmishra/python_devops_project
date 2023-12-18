#Python
FROM python:3.9-slim

# Setting working directory to /app
WORKDIR /app

# Copying the current directory files into the container at /app
COPY . /app

# Installing any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# environment variable
ENV FLASK_APP=app.py

# Run app.py when the container launches
CMD ["flask", "run", "--host=0.0.0.0"]

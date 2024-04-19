FROM debian:buster-slim

ARG DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get install -y python3 python3-pip curl nano procps

# Upgrade pip and install Flask
RUN pip3 install --upgrade pip && pip3 install flask

# Set the working directory inside the container
WORKDIR /flask-docker-app

# Copy your application file (app.py) into the Docker image
COPY app.py .

# Command to run when the container starts
CMD ["python3", "app.py"]

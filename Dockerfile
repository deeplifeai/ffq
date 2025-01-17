# Use an official Python runtime as the base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the package files to the working directory
COPY . .

# Install the procps package to make 'ps' command available
RUN apt-get update && apt-get install -y procps

# Install the 'ffq' Python package
RUN pip install .



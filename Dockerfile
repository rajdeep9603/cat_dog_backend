# Use an official Python runtime as the base image
FROM python:3.8.2-slim-buster

# Set the working directory in the container
WORKDIR /code

RUN apt update && apt install build-essential cmake gcc python3-dev gdal-bin -y

RUN python -m pip install --upgrade pip setuptools wheel

# Copy the requirements file to the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install -r requirements.txt

# Copy the project code to the container
COPY . .

# Expose the port where the Django application will run
EXPOSE 8000

# Set environment variables for Django
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
RUN touch db.sqlite3

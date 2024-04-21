# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

# Copy entire project (adjust this line if necessary)
COPY polls/ /code/

# Declare SECRET_KEY as an argument and set it as an environment variable
ARG SECRET_KEY
ENV SECRET_KEY=${SECRET_KEY}

# Collect static files
RUN python manage.py collectstatic --noinput

# Run migrations
RUN python manage.py migrate

# Command to run the application
CMD ["uwsgi", "--ini", "uwsgi.ini"]

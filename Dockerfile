# Pull base image
FROM python:3.8

# Set environment veribles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /asana

# Install dependencies
COPY Pipfile Pipfile.lock /asana/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /asana/

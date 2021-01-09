# Pull base image

FROM python:3.7

# Set environment variables

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory

RUN mkdir /MyExams/
WORKDIR /MyExams/

COPY requirements.txt /MyExams/

# Install dependencies
RUN apt-get update && apt-get -y install postgresql
RUN pip install -r requirements.txt

# Copy project

COPY . /MyExams/

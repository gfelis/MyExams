# Pull base image

FROM python:3.7

# Set environment variables

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory

RUN mkdir /MyExams/
WORKDIR /MyExams/

# Install dependencies

COPY requirements.txt /MyExams/
RUN pip install -r requirements.txt

# Copy project

COPY . /MyExams/

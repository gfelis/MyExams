#!/bin/bash

#Create 4 exams:
curl --location --request POST 'http://127.0.0.1:8000/api/exams/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "Math 1",
    "description": "First math exam",
    "date": "2021-01-01",
    "time_start": "17:00:00",
    "time_end": "20:00:00",
    "location": "127.0.0.1:8000/api/exams/"
}'
printf "\n"
curl --location --request POST 'http://127.0.0.1:8000/api/exams/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "Science 2",
    "description": "Second science exam",
    "date": "2021-01-02",
    "time_start": "17:00:00",
    "time_end": "20:00:00",
    "location": "127.0.0.1:8000/api/exams/"
}'
printf "\n"
curl --location --request POST 'http://127.0.0.1:8000/api/exams/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "History 3",
    "description": "Third history exam",
    "date": "2021-01-03",
    "time_start": "17:00:00",
    "time_end": "20:00:00",
    "location": "127.0.0.1:8000/api/exams/"
}'
printf "\n"
curl --location --request POST 'http://127.0.0.1:8000/api/exams/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "PE 4",
    "description": "Fourth PE exam",
    "date": "2021-01-04",
    "time_start": "17:00:00",
    "time_end": "20:00:00",
    "location": "127.0.0.1:8000/api/exams/"
}'
printf "\n\n"

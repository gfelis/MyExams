#!/bin/bash

#Upload grades to the first and the second exam:
curl --location --request POST 'http://127.0.0.1:8000/api/grades/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "grade": 9,
    "students_id": 1,
    "exam_id": 1
}'
printf "\n"
curl --location --request POST 'http://127.0.0.1:8000/api/grades/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "grade": 1,
    "students_id": 3,
    "exam_id": 1
}'
printf "\n"
curl --location --request POST 'http://127.0.0.1:8000/api/grades/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "grade": 10,
    "students_id": 4,
    "exam_id": 1
}'
printf "\n"
curl --location --request POST 'http://127.0.0.1:8000/api/grades/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "grade": 8,
    "students_id": 1,
    "exam_id": 2
}'
printf "\n"
curl --location --request POST 'http://127.0.0.1:8000/api/grades/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "grade": 9,
    "students_id": 2,
    "exam_id": 2
}'
printf "\n"
curl --location --request POST 'http://127.0.0.1:8000/api/grades/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "grade": 10,
    "students_id": 4,
    "exam_id": 2
}'
printf "\n\n"

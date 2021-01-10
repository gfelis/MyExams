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
#BONUS: Create Students
curl --location --request POST 'http://127.0.0.1:8000/api/students/' \
--header 'Content-Type: application/json' \
--data-raw '
    {
        "dni": "12121212P",
        "name": "Peter Parker"
    }'
printf "\n"
curl --location --request POST 'http://127.0.0.1:8000/api/students/' \
--header 'Content-Type: application/json' \
--data-raw '
    {
        "dni": "34343434B",
        "name": "Bruce Banner"
    }'
printf "\n"
curl --location --request POST 'http://127.0.0.1:8000/api/students/' \
--header 'Content-Type: application/json' \
--data-raw '
    {
        "dni": "56565656W",
        "name": "Wade Wilson"
    }'
printf "\n"
curl --location --request POST 'http://127.0.0.1:8000/api/students/' \
--header 'Content-Type: application/json' \
--data-raw '
    {
        "dni": "78787878R",
        "name": "Reed Richards"
    }'
printf "\n\n"
#Modify 3rd's description:
curl --location --request PUT 'http://127.0.0.1:8000/api/exams/3/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "History 3",
    "description": "Last history exam of this semester",
    "date": "2021-01-03",
    "time_start": "17:00:00",
    "time_end": "20:00:00",
    "location": "127.0.0.1:8000/api/exams/"
}'
printf "\n\n"
#Search and exam by its description (full):
curl --location --request GET 'http://127.0.0.1:8000/api/exams/?search=First%20math%20exam'
printf "\n\n"
#Delete the fourth one:
curl --location --request DELETE 'http://127.0.0.1:8000/api/exams/4/'
printf "\n\n"
#List all exams:
curl --location --request GET 'http://127.0.0.1:8000/api/exams/'
printf "\n\n"
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

#Delete the second:
curl --location --request DELETE 'http://127.0.0.1:8000/api/exams/2/' > /dev/null 2>&1

printf "Comprovar que l'examen no s'ha borrat. \n\n"
#Search an exam by its description (parcial):
curl --location --request GET 'http://127.0.0.1:8000/api/exams/?search=science'

printf "\n\n"
#Show it's grade:
curl --location --request GET 'http://127.0.0.1:8000/api/exams/2/grades/'

printf "\n\n"
#Check some ID from an existing student:
curl --location --request GET 'http://127.0.0.1:8000/api/students/?search=12121212P'

printf "\n\n"
#Check some other ID:
curl --location --request GET 'http://127.0.0.1:8000/api/students/?search=12345678A'
printf "\n\n"

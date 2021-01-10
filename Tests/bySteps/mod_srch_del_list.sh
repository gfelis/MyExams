#!/bin/bash

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

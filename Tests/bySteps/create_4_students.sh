#!/bin/bash

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

#!/bin/bash

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

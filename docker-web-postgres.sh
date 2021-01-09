#!/bin/bash

set -e

until PGPASSWORD=postgres psql -h "db" -U "postgres" -d "postgres" -c '\q'; do
  >&2 echo "Postgres is NOT available yet - Sleeping..."
  sleep 2
done

>&2 echo "Postgres is up!"
python /MyExams/manage.py runserver 0.0.0.0:8000

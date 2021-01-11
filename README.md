# MyExams

Installation:

1. Inside the folder where you cloned the project:

    $ docker-compose up -d --build

With this you both build the docker container and open the server in detached mode.

2. Apply django migrations:

    $ docker-compose exec web python manage.py migrate

3. Now the server should be up, go to http://127.0.0.1:8000/api/students/ to check it.

4. To fill up the database, you can run our test script:

    $ ./Tests/test_3.sh

5. To shut down the server you can run:

    $ docker-compose down

6. To open it up again and see logs verbose:

    $ docker-compose up

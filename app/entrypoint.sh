#!/bin/bash

# Navigate to the app directory
cd polls

# Run Django setup tasks
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput
python manage.py loaddata fixtures/initial_data.json

# Start the application
uwsgi --ini uwsgi.ini

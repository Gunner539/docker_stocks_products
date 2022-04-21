FROM python:3.9
COPY . /sp_app
RUN pip install -r /sp_app/requirements.txt
RUN python3 /sp_app/manage.py migrate
CMD python3 /sp_app/manage.py runserver 0.0.0.0:8000
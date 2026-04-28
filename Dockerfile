FROM python:3.12
RUN pip install django==6.0.4

COPY . .

RUN python manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8001"]


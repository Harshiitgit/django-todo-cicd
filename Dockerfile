FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install django==2.2.7 gunicorn

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "todoApp.wsgi:application"]


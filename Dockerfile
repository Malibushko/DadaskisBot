# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster

WORKDIR /code

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD [ "python", "start.py", "StartTelegram"]
FROM python:3.9-buster

RUN apt-get update

COPY requirements.txt /usr/src/app/requirements.txt

RUN pip install --upgrade \
    pip install -r /usr/src/app/requirements.txt

WORKDIR /usr/src/app
COPY . .

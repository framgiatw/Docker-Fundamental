FROM python:3

MAINTAINER Hoang Van Hai

RUN mkdir /code

ADD . /code

WORKDIR /code

RUN virtualenv ENV

RUN pip3 install -r requirements.txt

RUN pip3 install alembic

FROM python:2

ENV PYTHONUNBUFFERED 1

ADD . /venv

WORKDIR /venv

RUN pip install --upgrade pip

RUN pip install --upgrade setuptools

# This install for  MySQL-python==1.2.5
RUN apt-get install -y libmysqlclient-dev

RUN pip install -r requirements.txt

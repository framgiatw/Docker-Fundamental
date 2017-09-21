FROM ubuntu:16.04
MAINTAINER Hoang Van Hai

RUN echo "mysql-server mysql-server/root_password password root" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password root" | debconf-set-selections

RUN apt update && \
	apt -y install mysql-server-5.7 && \
	mkdir -p /var/lib/mysql && \
	mkdir -p /var/run/mysqld && \
	mkdir -p /var/log/mysql && \
	chown -R mysql:mysql /var/lib/mysql && \
	chown -R mysql:mysql /var/run/mysqld && \
	chown -R mysql:mysql /var/log/mysql
RUN apt -y install python-setuptools python-dev build-essential libmysqlclient-dev

RUN pip install --upgrade pip 

RUN pip install --upgrade virtualenv 

RUN mkdir /code

ADD . /code

WORKDIR /code

RUN virtualenv ENV

RUN pip install -r requirements.txt

RUN pip install alembic

EXPOSE  5000

CMD /code/install.sh

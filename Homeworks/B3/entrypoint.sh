#!/bin/bash

dbconfig="'mysql:\/\/root:root@localhost\/framgiatw'"
sed -i -e 's/SQLALCHEMY_DATABASE_URI.*/SQLALCHEMY_DATABASE_URI = '$dbconfig'/g' config.py

service mysql start
sleep 5

mysql -uroot -proot -e "CREATE DATABASE "framgiatw""
alembic init --template generic alembic
sed -i -e 's/sqlalchemy.url.*/sqlalchemy.url = mysql:\/\/root:root@localhost\/framgiatw/g' alembic.ini
python seed.py
python run.py

exec $@

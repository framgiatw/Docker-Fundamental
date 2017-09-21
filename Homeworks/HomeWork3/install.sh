#!/bin/bash

service mysql restart

mysql -uroot -proot -e "CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin'"

mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON * . * TO 'admin'@'localhost'"

mysql -uroot -proot -e "FLUSH PRIVILEGES"

mysql -uadmin -padmin -e "CREATE DATABASE framgiatw"


alembic init alembic
alembic upgrade head

python seed.py

python run.py -p 5000

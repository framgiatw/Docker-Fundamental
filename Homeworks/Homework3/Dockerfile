FROM ubuntu:16.04

MAINTAINER GROUP_5

RUN DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -qy python3 python3-pip

RUN mkdir -p /venv

COPY requirements.txt /venv/requirements.txt

RUN apt install -qy $(awk -F== '{print $1"="$2}' /venv/requirements.txt)

#Continue

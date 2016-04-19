FROM ubuntu:latest
MAINTAINER Mike Waters

RUN apt-get update
RUN apt-get install -y python python-pip python-dev

RUN git clone https://github.com/django/django.git

RUN cd django/tests && pip install -r requirements/py3.txt
CMD django/tests && PYTHONPATH=..:$PYTHONPATH ./runtests.py

FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip

RUN apt-get -y upgrade

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080

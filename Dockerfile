FROM python:3

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

COPY app2.py /opt/

ENTRYPOINT FLASK_APP=/opt/app2.py flask run --host=0.0.0.0 --port=8080

FROM python:3.8-slim

ARG PROJECT=flask_project
ARG PROJECT_DIR=/home/ubuntu/flask_project

WORKDIR $PROJECT_DIR

COPY requirements.txt .

ADD . $PROJECT_DIR

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

ADD . $PROJECT_DIR

ENTRYPOINT [ "python3", "application.py"]
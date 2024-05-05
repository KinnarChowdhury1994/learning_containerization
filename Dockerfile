FROM python:3.7-slim

RUN apt-get update -y

COPY ./ /app
WORKDIR /app

# ARG PROJECT=flask_project
# ARG PROJECT_DIR=/home/ubuntu/flask_project

# WORKDIR $PROJECT_DIR

COPY requirements.txt .

ADD . /app

# RUN pip3 install --no-cache-dir --upgrade -r requirements.txt
RUN pip install -r requirements.txt

ADD . /app

ENTRYPOINT [ "python" ]
CMD [ "application.py" ]
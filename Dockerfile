FROM python:3.9.16-alpine3.17

COPY ./Up-Vote-Bot /app


RUN apk add git
RUN apk add curl
RUN apk add cmake
RUN apk add g++
RUN apk add build-base
RUN apk add boost-dev
RUN apk add boost-date_time

# next line to add support for pip install pymysql
RUN apk add py3-pymysql

RUN /bin/sh -c "apk add --no-cache bash"
SHELL ["/bin/bash", "-c"]

# add/run/install scripts
RUN mkdir /app/scripts
COPY ./buildAbieos.sh /app/scripts/buildAbieos.sh
RUN chmod +x /app/scripts/buildAbieos.sh
RUN /app/scripts/buildAbieos.sh

# add/run/install python requirements
COPY ./requirements.txt /app/scripts/requirements.txt
RUN chmod +x /app/scripts/requirements.txt
RUN python -m pip install -r /app/scripts/requirements.txt

# add/python run script
COPY ./run.sh /app/scripts/run.sh
RUN chmod +x /app/scripts/run.sh
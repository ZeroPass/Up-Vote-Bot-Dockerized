FROM python:3.9.16-alpine3.17

COPY ./app /app

RUN apk add git
RUN apk add curl
RUN apk add cmake
RUN apk add g++
RUN apk add build-base
RUN apk add boost-dev
RUN apk add boost-date_time
# next line to add support for pip install pymysql
RUN apk add py3-pymysql

RUN cd /app/external
RUN cd abieos-python


RUN git submodule update --init --recursive
RUN cd /app/external/abieos-python/external/abieos
RUN mkdir build && cd build
RUN cmake ..
RUN make
RUN cd /app/external/abieos-python
RUN python setup.py build # maybe
RUN python -m pip install -e /app/external/abieos-python
RUN export PYTHONPATH=$PYTHONPATH:'/app'
RUN export LD_LIBRARY_PATH=/app/external/abieos-python/external/abieos/build
RUN python -m pip install -r /app/requirements.txt
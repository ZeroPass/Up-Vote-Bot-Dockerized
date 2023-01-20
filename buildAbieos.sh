#!/bin/bash

echo =">> Creating build folder '/app/external/abieos-python/external/abieos/build' >>"
mkdir /app/external/abieos-python/external/abieos/build

echo =">> Going to that folder >>"
cd /app/external/abieos-python/external/abieos/build

echo =">> Running cmake .. >>"
cmake ..

echo =">> Running make >>"
make

echo =">> Going to folder '/app/external/abieos-python'>>"
cd /app/external/abieos-python

echo =">> Running setup >>"
RUN python setup.py build

echo =">> Running pip install >>"
RUN python -m pip install -e /app/external/abieos-python

echo =">> Adding folder to PYTHONPATH and LD_LIBRARY_PATH>>"
export PYTHONPATH=$PYTHONPATH:'/app'
export LD_LIBRARY_PATH=/app/external/abieos-python/external/abieos/build

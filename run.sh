#!/bin/bash

echo =">> Adding folder to PYTHONPATH and LD_LIBRARY_PATH>>"
export PYTHONPATH=$PYTHONPATH:'/app'
export LD_LIBRARY_PATH=/app/external/abieos-python/external/abieos/build

#we need this location for correct loading of a picture
cd /app

echo ">> Start running the script>>"
python /app/server.py &
python /app/edenBot.py
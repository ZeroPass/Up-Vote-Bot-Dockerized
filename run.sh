#!/bin/bash

echo =">> Adding folder to PYTHONPATH and LD_LIBRARY_PATH>>"
export PYTHONPATH=$PYTHONPATH:'/app'
export LD_LIBRARY_PATH=/app/external/abieos-python/external/abieos/build

echo ">> Start running the script>>"
python /app/edenBot.py
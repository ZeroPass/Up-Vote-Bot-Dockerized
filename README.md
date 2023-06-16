# Up-Vote-Bot-Dockerized
Dockerized Up Vote Bot application

## Git help

* Recursive clone
  ```
  git clone --recursive https://<<url>>/ZeroPass/Up-Vote-Bot-Dockerized.git
  ```
  
* Recursive init submodules
  ```
  git submodule update --init --recursive
  ```
  
## Docker help
* Build image (be careful on dot at the end:) )
  ```
  docker build -t up_vote_bot .
  ```
 
* Run image
  ```
  docker run -t -p 8080:8080 up_vote_bot
  ```
  
* Python help
  ```
  #example of running specific file in the project - you must add PYTHONPATH and LD_LIBRTARY_PATH
  PYTHONPATH="/app" LD_LIBRARY_PATH="/app/external/abieos-python/external/abieos/build" python /app/chain/eden.py 
  ```

## Additional help

* Make sure that eden_season_env is updated for every election
* Dont forget to transfer knownUsers table from previous database if you move to the new one ('bot_name' is parameter that tells you which bot has connection with it)
* Database needs to be created before you run the bot (tables will be created automaticaly)

## Creating last docker image:

1. >cd . (go into subfolder)
1. >git checkout < last commit >
1. >cd ..
1. >docker build -t up_vote_bot_release .
1. >docker tag up_vote_bot_release cloud/namespace/up_vote_bot_release
1. >docker push cloud/namespace/up_vote_bot_release
  
## License

* [MIT](LICENSE.md)

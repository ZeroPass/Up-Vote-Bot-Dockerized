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
  docker run -t -p 8082:8082 --expose 8080 up_vote_bot
  ```

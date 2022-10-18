# Docker Commands
## Docker CLI build 命令行说明
Reference: <https://docs.docker.com/engine/reference/commandline/build/>

## Docker CLI run 命令行说明
Reference: <https://docs.docker.com/engine/reference/commandline/run/>

* `--name`  
  Assign a name to the container
* `-i` (`--interactive`)  
  Keep STDIN open even if not attached
* `-t`  
  Allocate a pseudo-TTY
* `-d` (`--detach`)  
  Run container in background and print container ID
* `-p` (`--expose`)  
  Expose a port or a range of ports
* `-e` (`--env`)  
  Set environment variables

## Dockerfile reference
Reference: <https://docs.docker.com/engine/reference/builder/>

## Images
* `docker images`  
  List all images

* `docker image rm <IMAGE>`  
  Remove one single image

* `docker image rmi <IMAGE> [IMAGE...]`  
  Remove multiple images

* `docker images -f dangling=true`  
  List dangling images. They can be treated as caches.

* `docker rmi $(docker images -qf dangling=true)`  
`docker images -qf dangling=true | xargs docker rmi`  
`docker image prune`  
  Remove dangling images. The above commands have the same effect.

* `docker rmi $(docker images -q)`  
  Remove all images

## Container
* `docker ps -a`  
  List all containers

* `docker exec -it <container_name> bash`  
  Enter container

* `docker stop $(docker ps -aq)`  
  Stop all running containers

* `docker rm <container_d>`  
  Remove container

* `docker rm $(docker ps -aq)`
  Remove all containers

* `docker cp <containerId>:/file/path/within/container /host/path/target`
  Copy files

## Docker Compose
Reference <https://docs.docker.com/compose/reference/>  

* `docker-compose up`  
  前台启动

* `docker-compose up -d`  
  Detached mode: Run containers in the background

* `docker-compose up --build`
  修改Dockerfile后直接compose up，docker不会重新build image，需要用参数--build

* `docker-compose down`
  销毁container。修改docker-compose.yml后, 需要用docker-compose重建 container

## Compose Specification （docker-compose.yml）
Reference: <https://docs.docker.com/compose/compose-file/>

## Service
-- 服务自启动
`systemctl enable docker.service`

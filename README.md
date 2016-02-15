# DockerBuild
用来存放镜像的Dockerfile

##redis镜像

###构建镜像

* 进入centos-redis目录，然后`docker build -t test/redis .`

* 成功后用`docker images`查看

###启动一个redis容器

* `docker run -d -p 8379:8379 --name redis1 test/redis`
* 如果想进入容器可以用`docker exec -it redis1 /bin/bash`

###测试

* `redis-cli -h 127.0.0.1 -p 8379 -a TopRedis`

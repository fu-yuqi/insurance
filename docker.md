# docker常用命令
## 镜像相关命令
### 1、查看镜像
```
docker images
```

### 搜索镜像
```
docker search 镜像名称
```

### 拉取镜像
```
docker pull 镜像名称
例：docker pull centos:7
```

### 删除镜像
```
按镜像id删除镜像
docker rmi 镜像ID
删除所有镜像
docker rmi `docker images -q`
```

### 查看容器
```
查看正在运行的容器
docker ps
查看所有容器
docker ps –a
查看最后一次运行的容器
docker ps –l
查看停止的容器
docker ps -f status=exited
```

### 创建与启动容器
```
创建容器命令
docker run
-i：表示运行容器
-t：表示容器启动后会进入其命令行。加入这两个参数后，容器创建就能登录进去。即分配一个伪终端。
–name :为创建的容器命名。
-v：表示目录映射关系（前者是宿主机目录，后者是映射到宿主机上的目录），可以使用多个－v做多个目录或文件映射。注意：最好做目录映射，在宿主机上做修改，然后共享到容器上。
-d：在run后面加上-d参数,则会创建一个守护式容器在后台运行（这样创建容器后不会自动登录容器，如果只加-i -t两个参数，创建后就会自动进去容器）。
-p：表示端口映射，前者是宿主机端口，后者是容器内的映射端口。可以使用多个-p做多个端口映射

交互式方式创建容器
docker run -it --name=容器名称 镜像名称:标签 /bin/bash
退出当前容器
exit
守护式方式创建容器：
docker run -di --name=容器名称 镜像名称:标签
登录守护式容器方式：
docker exec -it 容器名称 (或者容器ID)  /bin/bash
```

### 停止与启动容器
```
停止容器：
docker stop 容器名称（或者容器ID）
启动容器：
docker start 容器名称（或者容器ID）
```
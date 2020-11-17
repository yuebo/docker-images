MySQL构建工具
-----------------
该工具是用于快速构建mysql集群，参考[dbm-agent](https://github.com/Neeky/dbm-agent)构建的

## 构建master-slaver模式
```bash
docker build . -t dbm-agent
docker-compose up -d
docker-compose exec master sh /root/init/master.sh
docker-compose exec slaver sh /root/init/slaver.sh
```

查看mysql监控数据
```bash
docker-compose exec master curl http://127.0.0.1:8080/instances/3306/
```

数据备份
```bash
docker-compose exec master dbma-cli-backup-instance full-backup
```

## 构建多slaver
修改docker-compose文件后，使用命令沟通多从
```bash
version: '3.1'
services:
  master:
    image: dbm-agent
    volumes:
      - ./init:/root/init
      - ./pkg:/root/pkg
    ports:
      - 13306:3306
    privileged: true
    restart: always
    environment:
      - TZ=Asia/Shanghai
  slaver1:
    image: dbm-agent
    volumes:
      - ./init:/root/init
      - ./pkg:/root/pkg
    ports:
      - 23306:3306
    privileged: true
    restart: always
    links:
      - master:master
    environment:
      - TZ=Asia/Shanghai
  slaver2:
    image: dbm-agent
    volumes:
      - ./init:/root/init
      - ./pkg:/root/pkg
    ports:
      - 23306:3306
    privileged: true
    restart: always
    links:
      - master:master
    environment:
      - TZ=Asia/Shanghai
```
命令行如下：
```bash
docker build . -t dbm-agent
docker-compose up -d
docker-compose exec master sh /root/init/master.sh
docker-compose exec slaver1 sh /root/init/slaver.sh
docker-compose exec slaver2 sh /root/init/slaver.sh
```

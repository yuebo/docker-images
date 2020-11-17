MySQL构建工具
-----------------
该工具是用于快速构建mysql集群，参考[dbm-agent](https://github.com/Neeky/dbm-agent)构建的

## 构建MGR
```bash
docker build . -t dbm-agent
docker-compose up -d
docker-compose exec mgr1 sh /root/init/mgr.sh
docker-compose exec mgr2 sh /root/init/mgr.sh
docker-compose exec mgr3 sh /root/init/mgr.sh
```
查询状态
```bash
docker build . -t dbm-agent
docker-compose up -d
docker-compose exec mgr1 mysql -h127.0.0.1 -P3306 -uroot -pdbma@0352 -e"select * from performance_schema.replication_group_members;"
```

重新加入集群
```bash
docker build . -t dbm-agent
docker-compose up -d
docker-compose exec mgr1 mysql -h127.0.0.1 -P3306 -uroot -pdbma@0352 -e"START GROUP_REPLICATION;"
```
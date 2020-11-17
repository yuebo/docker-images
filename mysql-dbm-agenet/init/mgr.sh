dbm-agent init
cp -r /root/pkg /usr/local/dbm-agent
dbma-cli-build-mgr --port=3306 --max-mem=1024 --members=192.168.100.101,192.168.100.102,192.168.100.103 build-mgr
ln /usr/local/mysql-8.0.22-linux-glibc2.12-x86_64/bin/mysql /usr/bin/mysql
ln /usr/local/mysql-8.0.22-linux-glibc2.12-x86_64/bin/mysqldump /usr/bin/mysqldump
ln /usr/local/mysql-8.0.22-linux-glibc2.12-x86_64/bin/mysqlslap /usr/bin/mysqlslap
ln /usr/local/mysql-8.0.22-linux-glibc2.12-x86_64/bin/mysqlimport /usr/bin/mysqlimport
ln /usr/local/mysql-8.0.22-linux-glibc2.12-x86_64/bin/mysqladmin /usr/bin/mysqladmin
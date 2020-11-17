dbm-agent init
cp -r /root/pkg /usr/local/dbm-agent
dbma-cli-single-instance --port=3306 install
ln /usr/local/mysql-8.0.22-linux-glibc2.12-x86_64/bin/mysql /usr/bin/mysql
ln /usr/local/mysql-8.0.22-linux-glibc2.12-x86_64/bin/mysqldump /usr/bin/mysqldump
ln /usr/local/mysql-8.0.22-linux-glibc2.12-x86_64/bin/mysqlslap /usr/bin/mysqlslap
ln /usr/local/mysql-8.0.22-linux-glibc2.12-x86_64/bin/mysqlimport /usr/bin/mysqlimport
ln /usr/local/mysql-8.0.22-linux-glibc2.12-x86_64/bin/mysqladmin /usr/bin/mysqladmin
/usr/local/mysql-8.0.22-linux-glibc2.12-x86_64/bin/mysql -h127.0.0.1 -P3306 -uroot -pdbma@0352 < /root/init/sql/init.sql
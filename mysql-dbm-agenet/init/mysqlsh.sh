dbma-cli-install-mysqlsh install-mysqlsh
ln /usr/lib64/libpython3.6m.so.1.0 /usr/lib64/libpython3.7m.so.1.0
/usr/local/mysql-shell-8.0.22-linux-glibc2.12-x86-64bit/bin/mysqlsh --uri innodbclusteradmin@127.0.0.1:3306 --password=dbma@0352 < /usr/local/dbm-agent/etc/templates/create-innodb-cluster.js
use mysql;
update user set host='%' where user='root' and host='localhost';
FLUSH PRIVILEGES;


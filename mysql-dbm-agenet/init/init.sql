CREATE USER 'admin'@'%' IDENTIFIED by 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
ALTER USER 'admin'@'%' IDENTIFIED WITH mysql_native_password BY 'admin';
FLUSH PRIVILEGES;

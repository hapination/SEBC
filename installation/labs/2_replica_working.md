Installing maria db

http://www.cloudera.com/documentation/enterprise/latest/topics/install_cm_mariadb.html

`sudo yum install mariadb-server`

`mv /var/lib/mysql/ib_logfile0 /tmp/.`

`mv /var/lib/mysql/ib_logfile1 /tmp/.`

Edit file /etc/my.cnf

Enable starting at startup
`chkconfig mariadb on`

`service mariadb start`

Root password = password
`/usr/bin/mysql_secure_installation`

Copy mysql connector jar file. Copied via ansible file transfer.

```
[root@xm1 ~]# ls -al /usr/share/java
total 968
drwxr-xr-x   2 root root     38 Mar 12 16:12 .
drwxr-xr-x. 76 root root   4096 Mar 12 16:12 ..
-rw-r--r--   1 root root 983911 Mar 12 16:12 mysql-connector-java.jar
```

Database creations done via ansible script.

```
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| amon               |
| arcadia            |
| hive               |
| hue                |
| mysql              |
| nav                |
| navms              |
| oozie              |
| performance_schema |
| rman               |
| sentry             |
+--------------------+
```

In the master set /etc/my.cnf
```
[mysqld]
log-bin
server_id=1
replicate-do-db=amon
```


Create a slave user:
```
CREATE USER 'slave'@'%' IDENTIFIED BY 'SlavePassword';
GRANT REPLICATION SLAVE ON *.* TO slave IDENTIFIED BY 'SlavePassword' WITH GRANT OPTION;
FLUSH PRIVILEGES;
FLUSH TABLES WITH READ LOCK;
SHOW MASTER STATUS;
```

```
MariaDB [(none)]> SHOW MASTER STATUS;
+-------------------------+----------+--------------+------------------+
| File                    | Position | Binlog_Do_DB | Binlog_Ignore_DB |
+-------------------------+----------+--------------+------------------+
| mysql_binary_log.000007 |      594 |              |                  |
+-------------------------+----------+--------------+------------------+
1 row in set (0.00 sec)
```

Dump the table
`mysqldump -u root -p amon > amon-dump.sql`

Database unlock:
`UNLOCK TABLES;`

Copy the dump to the slave:
`scp amon-dump.sql xm2:.`


Slave setting
Install the second maridb instance on node xm2

Set the root password


```
 CREATE DATABASE amon;
 GRANT ALL PRIVILEGES ON employees.* TO 'slave'@'%' WITH GRANT OPTION;
 FLUSH PRIVILEGES;
```

Load the dump
`mysql -u root -p amon < amon-dump.sql`

Change the /etc/my.cnf config:
server_id=2
replicate-do-db=amon

Restart mariadb
`systemctl restart mariadb`

Log into mysql:

Get the values from the master
```
CHANGE MASTER TO
MASTER_HOST='172.32.11.81',
MASTER_USER='slave',
MASTER_PASSWORD='SlavePassword',
MASTER_PORT=3306,
MASTER_LOG_FILE='mysql_binary_log.000007',
MASTER_LOG_POS=594,
MASTER_CONNECT_RETRY=10;

This didnt seem to work MASTER_USE_GTID=current_pos;

```

`START SLAVE;`

`SHOW SLAVE STATUS`


Slave working.

```
MariaDB [(none)]> show slave status;
+----------------------------------+--------------+-------------+-------------+---------------+-------------------------+---------------------+--------------------------+---------------+-------------------------+------------------+-------------------+-----------------+---------------------+--------------------+------------------------+-------------------------+-----------------------------+------------+------------+--------------+---------------------+-----------------+-----------------+----------------+---------------+--------------------+--------------------+--------------------+-----------------+-------------------+----------------+-----------------------+-------------------------------+---------------+---------------+----------------+----------------+-----------------------------+------------------+
| Slave_IO_State                   | Master_Host  | Master_User | Master_Port | Connect_Retry | Master_Log_File         | Read_Master_Log_Pos | Relay_Log_File           | Relay_Log_Pos | Relay_Master_Log_File   | Slave_IO_Running | Slave_SQL_Running | Replicate_Do_DB | Replicate_Ignore_DB | Replicate_Do_Table | Replicate_Ignore_Table | Replicate_Wild_Do_Table | Replicate_Wild_Ignore_Table | Last_Errno | Last_Error | Skip_Counter | Exec_Master_Log_Pos | Relay_Log_Space | Until_Condition | Until_Log_File | Until_Log_Pos | Master_SSL_Allowed | Master_SSL_CA_File | Master_SSL_CA_Path | Master_SSL_Cert | Master_SSL_Cipher | Master_SSL_Key | Seconds_Behind_Master | Master_SSL_Verify_Server_Cert | Last_IO_Errno | Last_IO_Error | Last_SQL_Errno | Last_SQL_Error | Replicate_Ignore_Server_Ids | Master_Server_Id |
+----------------------------------+--------------+-------------+-------------+---------------+-------------------------+---------------------+--------------------------+---------------+-------------------------+------------------+-------------------+-----------------+---------------------+--------------------+------------------------+-------------------------+-----------------------------+------------+------------+--------------+---------------------+-----------------+-----------------+----------------+---------------+--------------------+--------------------+--------------------+-----------------+-------------------+----------------+-----------------------+-------------------------------+---------------+---------------+----------------+----------------+-----------------------------+------------------+
| Waiting for master to send event | 172.32.11.81 | slave       |        3306 |            10 | mysql_binary_log.000007 |                 594 | mariadb-relay-bin.000002 |           536 | mysql_binary_log.000007 | Yes              | Yes               | amon            |                     |                    |                        |                         |                             |          0 |            |            0 |                 594 |             832 | None            |                |             0 | No                 |                    |                    |                 |                   |                |                     0 | No                            |             0 |               |              0 |                |                             |                1 |
+----------------------------------+--------------+-------------+-------------+---------------+-------------------------+---------------------+--------------------------+---------------+-------------------------+------------------+-------------------+-----------------+---------------------+--------------------+------------------------+-------------------------+-----------------------------+------------+------------+--------------+---------------------+-----------------+-----------------+----------------+---------------+--------------------+--------------------+--------------------+-----------------+-------------------+----------------+-----------------------+-------------------------------+---------------+---------------+----------------+----------------+-----------------------------+------------------+
1 row in set (0.00 sec)
```
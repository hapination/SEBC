```
MariaDB [(none)]> show variables where Variable_name='hostname';
+---------------+---------------------------------+
| Variable_name | Value                           |
+---------------+---------------------------------+
| hostname      | xgw1.eu-west-1.compute.internal |
+---------------+---------------------------------+
1 row in set (0.00 sec)
```


```
MariaDB [(none)]> status;
--------------
mysql  Ver 15.1 Distrib 5.5.56-MariaDB, for Linux (x86_64) using readline 5.1

Connection id:		2
Current database:
Current user:		root@localhost
SSL:			Not in use
Current pager:		stdout
Using outfile:		''
Using delimiter:	;
Server:			MariaDB
Server version:		5.5.56-MariaDB MariaDB Server
Protocol version:	10
Connection:		Localhost via UNIX socket
Server characterset:	latin1
Db     characterset:	latin1
Client characterset:	utf8
Conn.  characterset:	utf8
UNIX socket:		/var/lib/mysql/mysql.sock
Uptime:			6 min 2 sec
```


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
12 rows in set (0.00 sec)
```
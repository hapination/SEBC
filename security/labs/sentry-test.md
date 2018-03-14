```
beeline
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=512M; support was removed in 8.0
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=512M; support was removed in 8.0
Beeline version 1.1.0-cdh5.9.3 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/xm1.eu-west-1.compute.internal@HADOOP.COM
scan complete in 20ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/xm1.eu-west-1.compute.internal@HADOOP.COM
Connected to: Apache Hive (version 1.1.0-cdh5.9.3)
Driver: Hive JDBC (version 1.1.0-cdh5.9.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> show databases
. . . . . . . . . . . . . . . . . . . .> ;
INFO  : Compiling command(queryId=hive_20180314173131_5d8f1cd4-1472-4a5f-aceb-564fbf54e37c): show databases
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:database_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20180314173131_5d8f1cd4-1472-4a5f-aceb-564fbf54e37c); Time taken: 0.712 seconds
INFO  : Executing command(queryId=hive_20180314173131_5d8f1cd4-1472-4a5f-aceb-564fbf54e37c): show databases
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180314173131_5d8f1cd4-1472-4a5f-aceb-564fbf54e37c); Time taken: 0.273 seconds
INFO  : OK
+----------------+--+
| database_name  |
+----------------+--+
| default        |
+----------------+--+
1 row selected (1.404 seconds)
0: jdbc:hive2://localhost:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20180314173131_5bac7699-edf6-4891-b4ae-237787b2d5fc): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20180314173131_5bac7699-edf6-4891-b4ae-237787b2d5fc); Time taken: 0.392 seconds
INFO  : Executing command(queryId=hive_20180314173131_5bac7699-edf6-4891-b4ae-237787b2d5fc): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180314173131_5bac7699-edf6-4891-b4ae-237787b2d5fc); Time taken: 0.199 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (0.674 seconds)
```


```
[terasha@xm1 root]$ kinit george
Password for george@HADOOP.COM:
[terasha@xm1 root]$ beeline
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=512M; support was removed in 8.0
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=512M; support was removed in 8.0
Beeline version 1.1.0-cdh5.9.3 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/xm1.eu-west-1.compute.internal@HADOOP.COM
scan complete in 1ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/xm1.eu-west-1.compute.internal@HADOOP.COM
Connected to: Apache Hive (version 1.1.0-cdh5.9.3)
Driver: Hive JDBC (version 1.1.0-cdh5.9.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20180314181414_2b663d5c-9399-4bd5-a6ad-5b34067acd63): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20180314181414_2b663d5c-9399-4bd5-a6ad-5b34067acd63); Time taken: 0.052 seconds
INFO  : Executing command(queryId=hive_20180314181414_2b663d5c-9399-4bd5-a6ad-5b34067acd63): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180314181414_2b663d5c-9399-4bd5-a6ad-5b34067acd63); Time taken: 0.146 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.296 seconds)
0: jdbc:hive2://localhost:10000/default>
```


```
[terasha@xm1 root]$ kinit ferdinand
Password for ferdinand@HADOOP.COM:
[terasha@xm1 root]$ beeline
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=512M; support was removed in 8.0
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=512M; support was removed in 8.0
Beeline version 1.1.0-cdh5.9.3 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/xm1.eu-west-1.compute.internal@HADOOP.COM
scan complete in 2ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/xm1.eu-west-1.compute.internal@HADOOP.COM
Connected to: Apache Hive (version 1.1.0-cdh5.9.3)
Driver: Hive JDBC (version 1.1.0-cdh5.9.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20180314181515_61c44968-e91d-40e9-89f2-149c4c8c3a58): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20180314181515_61c44968-e91d-40e9-89f2-149c4c8c3a58); Time taken: 0.061 seconds
INFO  : Executing command(queryId=hive_20180314181515_61c44968-e91d-40e9-89f2-149c4c8c3a58): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180314181515_61c44968-e91d-40e9-89f2-149c4c8c3a58); Time taken: 0.121 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| sample_07  |
+------------+--+
1 row selected (0.286 seconds)
0: jdbc:hive2://localhost:10000/default>
```
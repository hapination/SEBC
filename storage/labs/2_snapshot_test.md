as user hapination
`hdfs dfs -mkdir precious`

`hdfs dfs -chown hapination precious`

Copy zip file to precious directory


as root
`sudo -u hdfs hdfs dfsadmin -allowSnapshots /user/hapination/precious`

as hapination
`hdfs dfs -createSnapshot precious sebc-hdfs-test`

try to delete
`hdfs dfs -rm -f -r precious`

won't work as there is a snapshot

Delete zip file
`hdfs dfs -rm -f -r precious/SEBC.zip`

Recover file from snapshot
`hdfs dfs -cp precious/.snapshot/sebc-hdfs-test/SEBC.zip precious/.`

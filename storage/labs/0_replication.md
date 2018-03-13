Create becnhmark dir
`sudo -u hdfs hdfs dfs -mkdir /hapination`

Add rights
`sudo -u hdfs hdfs dfs -chmod 777 /hapination`

Empty results dir
`sudo -u hdfs hdfs dfs -rm -f -r /hapination/*`

List contents
`hdfs dfs -ls -h /hapination`

Teragen command
`hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen 5000000 /hapination`

`sudo -u hdfs hdfs dfs -mkdir /ronvander`
`sudo -u hdfs hdfs dfs -chmod 777 /ronvander`

`hadoop distcp hftp://ec2-34-248-53-154.eu-west-1.compute.amazonaws.com/user/ronvander hdfs://xm1:8020/ronvander`

`hadoop distcp hdfs://ec2-34-248-53-154.eu-west-1.compute.amazonaws.com:8020/user/ronvander hdfs://xm1:8020/ronvander`

Not working due to issues with local private internet addresses. This is normal behaviour. The clusters need to be in the same subnet/namespace for this 
to work correctly.

Copying internally in the cluster
`hadoop distcp hdfs://xm1:8020/hapination/ hdfs://xm1:8020/ronvander/`

`hdfs fsck /hapination -files -blocks`
`hdfs fsck /ronvander -files -blocks`

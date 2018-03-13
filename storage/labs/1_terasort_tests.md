Create user (on all nodes)
`adduser hapination`

Create directory
`sudo -u hdfs hdfs dfs -mkdir /user/hapination`

Set owner
`sudo -u hdfs hdfs dfs -chown hapination /user/hapination`

Command for deletion
`hdfs dfs -rm -f -r -skipTrash /user/hapination/output.data`

Teragen

`time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -Dmapred.map.tasks=4 -Ddfs.block.size=32000000 100000000 /user/hapination/output.data`

```
real	2m41.175s
user	2m8.900s
sys	0m8.530s
```

Hmm, this only created one file, instead of 4. Later it was figured out that yarn gateway role was missing so job was running in client mode
Running it again now.

```
18/03/13 14:33:52 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=493416
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=344
		HDFS: Number of bytes written=10000000000
		HDFS: Number of read operations=16
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=8
	Job Counters
		Launched map tasks=4
		Other local map tasks=4
		Total time spent by all maps in occupied slots (ms)=583322
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=583322
		Total vcore-seconds taken by all map tasks=583322
		Total megabyte-seconds taken by all map tasks=597321728
	Map-Reduce Framework
		Map input records=100000000
		Map output records=100000000
		Input split bytes=344
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=1065
		CPU time spent (ms)=158970
		Physical memory (bytes) snapshot=1464995840
		Virtual memory (bytes) snapshot=11170312192
		Total committed heap usage (bytes)=1108344832
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=214760662691937609
	File Input Format Counters
		Bytes Read=0
	File Output Format Counters
		Bytes Written=10000000000

real	2m41.772s
user	0m8.101s
sys	0m0.402s
```

And now there are four files

```
[hapination@xgw1 root]$ hdfs dfs -ls output.data/
Found 5 items
-rw-r--r--   3 hapination supergroup          0 2018-03-13 14:22 output.data/_SUCCESS
-rw-r--r--   3 hapination supergroup 2500000000 2018-03-13 14:22 output.data/part-m-00000
-rw-r--r--   3 hapination supergroup 2500000000 2018-03-13 14:21 output.data/part-m-00001
-rw-r--r--   3 hapination supergroup 2500000000 2018-03-13 14:22 output.data/part-m-00002
-rw-r--r--   3 hapination supergroup 2500000000 2018-03-13 14:22 output.data/part-m-00003
```


`hdfs dfs -rm -f -r -skipTrash /user/hapination/terasort-output`

`time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort /user/hapination/output.data /user/hapination/terasort-output/`


```
18/03/13 14:29:57 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=4445242337
		FILE: Number of bytes written=8828058162
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=10000046768
		HDFS: Number of bytes written=10000000000
		HDFS: Number of read operations=966
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=12
	Job Counters
		Launched map tasks=316
		Launched reduce tasks=6
		Data-local map tasks=316
		Total time spent by all maps in occupied slots (ms)=2790023
		Total time spent by all reduces in occupied slots (ms)=538584
		Total time spent by all map tasks (ms)=2790023
		Total time spent by all reduce tasks (ms)=538584
		Total vcore-seconds taken by all map tasks=2790023
		Total vcore-seconds taken by all reduce tasks=538584
		Total megabyte-seconds taken by all map tasks=2856983552
		Total megabyte-seconds taken by all reduce tasks=551510016
	Map-Reduce Framework
		Map input records=100000000
		Map output records=100000000
		Map output bytes=10200000000
		Map output materialized bytes=4342614645
		Input split bytes=46768
		Combine input records=0
		Combine output records=0
		Reduce input groups=100000000
		Reduce shuffle bytes=4342614645
		Reduce input records=100000000
		Reduce output records=100000000
		Spilled Records=200000000
		Shuffled Maps =1896
		Failed Shuffles=0
		Merged Map outputs=1896
		GC time elapsed (ms)=67896
		CPU time spent (ms)=1600500
		Physical memory (bytes) snapshot=155060715520
		Virtual memory (bytes) snapshot=897330814976
		Total committed heap usage (bytes)=165226741760
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=10000000000
	File Output Format Counters
		Bytes Written=10000000000
18/03/13 14:29:57 INFO terasort.TeraSort: done

real	6m17.384s
user	0m10.496s
sys	0m0.525s
``
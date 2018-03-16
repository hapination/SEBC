```
[hilary@xm1 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -Dmapreduce.map.memory.mb=768 -Dmapreduce.job.maps=16 -Ddfs.blocksize=67108864 65536000 output_data
18/03/16 12:51:47 INFO client.RMProxy: Connecting to ResourceManager at xgw1.eu-west-1.compute.internal/172.32.16.40:8032
18/03/16 12:51:48 INFO terasort.TeraGen: Generating 65536000 using 16
18/03/16 12:51:48 INFO mapreduce.JobSubmitter: number of splits:16
18/03/16 12:51:48 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1521195930600_0003
18/03/16 12:51:48 INFO impl.YarnClientImpl: Submitted application application_1521195930600_0003
18/03/16 12:51:48 INFO mapreduce.Job: The url to track the job: http://xgw1.eu-west-1.compute.internal:8088/proxy/application_1521195930600_0003/
18/03/16 12:51:48 INFO mapreduce.Job: Running job: job_1521195930600_0003
18/03/16 12:51:55 INFO mapreduce.Job: Job job_1521195930600_0003 running in uber mode : false
18/03/16 12:51:55 INFO mapreduce.Job:  map 0% reduce 0%
18/03/16 12:52:12 INFO mapreduce.Job:  map 5% reduce 0%
18/03/16 12:52:14 INFO mapreduce.Job:  map 24% reduce 0%
18/03/16 12:52:18 INFO mapreduce.Job:  map 25% reduce 0%
18/03/16 12:52:19 INFO mapreduce.Job:  map 26% reduce 0%
18/03/16 12:52:20 INFO mapreduce.Job:  map 31% reduce 0%
18/03/16 12:52:35 INFO mapreduce.Job:  map 34% reduce 0%
18/03/16 12:52:36 INFO mapreduce.Job:  map 37% reduce 0%
18/03/16 12:52:37 INFO mapreduce.Job:  map 39% reduce 0%
18/03/16 12:52:39 INFO mapreduce.Job:  map 44% reduce 0%
18/03/16 12:52:41 INFO mapreduce.Job:  map 46% reduce 0%
18/03/16 12:52:43 INFO mapreduce.Job:  map 48% reduce 0%
18/03/16 12:52:44 INFO mapreduce.Job:  map 49% reduce 0%
18/03/16 12:52:46 INFO mapreduce.Job:  map 50% reduce 0%
18/03/16 12:52:47 INFO mapreduce.Job:  map 51% reduce 0%
18/03/16 12:52:48 INFO mapreduce.Job:  map 52% reduce 0%
18/03/16 12:52:50 INFO mapreduce.Job:  map 54% reduce 0%
18/03/16 12:52:52 INFO mapreduce.Job:  map 56% reduce 0%
18/03/16 12:52:54 INFO mapreduce.Job:  map 57% reduce 0%
18/03/16 12:52:55 INFO mapreduce.Job:  map 58% reduce 0%
18/03/16 12:52:57 INFO mapreduce.Job:  map 60% reduce 0%
18/03/16 12:52:58 INFO mapreduce.Job:  map 63% reduce 0%
18/03/16 12:53:10 INFO mapreduce.Job:  map 66% reduce 0%
18/03/16 12:53:11 INFO mapreduce.Job:  map 72% reduce 0%
18/03/16 12:53:14 INFO mapreduce.Job:  map 75% reduce 0%
18/03/16 12:53:15 INFO mapreduce.Job:  map 76% reduce 0%
18/03/16 12:53:16 INFO mapreduce.Job:  map 77% reduce 0%
18/03/16 12:53:17 INFO mapreduce.Job:  map 79% reduce 0%
18/03/16 12:53:20 INFO mapreduce.Job:  map 80% reduce 0%
18/03/16 12:53:21 INFO mapreduce.Job:  map 81% reduce 0%
18/03/16 12:53:22 INFO mapreduce.Job:  map 82% reduce 0%
18/03/16 12:53:23 INFO mapreduce.Job:  map 85% reduce 0%
18/03/16 12:53:26 INFO mapreduce.Job:  map 88% reduce 0%
18/03/16 12:53:27 INFO mapreduce.Job:  map 89% reduce 0%
18/03/16 12:53:29 INFO mapreduce.Job:  map 90% reduce 0%
18/03/16 12:53:31 INFO mapreduce.Job:  map 91% reduce 0%
18/03/16 12:53:33 INFO mapreduce.Job:  map 93% reduce 0%
18/03/16 12:53:35 INFO mapreduce.Job:  map 94% reduce 0%
18/03/16 12:53:40 INFO mapreduce.Job:  map 100% reduce 0%
18/03/16 12:53:40 INFO mapreduce.Job: Job job_1521195930600_0003 completed successfully
18/03/16 12:53:40 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=2364022
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=1368
		HDFS: Number of bytes written=6553600000
		HDFS: Number of read operations=64
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=32
	Job Counters
		Launched map tasks=16
		Other local map tasks=16
		Total time spent by all maps in occupied slots (ms)=460555
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=460555
		Total vcore-milliseconds taken by all map tasks=460555
		Total megabyte-milliseconds taken by all map tasks=471608320
	Map-Reduce Framework
		Map input records=65536000
		Map output records=65536000
		Input split bytes=1368
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=1973
		CPU time spent (ms)=164820
		Physical memory (bytes) snapshot=5308133376
		Virtual memory (bytes) snapshot=41233354752
		Total committed heap usage (bytes)=4764729344
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=140750829423462787
	File Input Format Counters
		Bytes Read=0
	File Output Format Counters
		Bytes Written=6553600000

real	1m55.693s
user	0m8.491s
sys	0m0.399s

```

oops I just a different output directory of output_data

```
[hilary@xm1 ~]$ hdfs dfs -ls /user/hilary/output_data
Found 17 items
-rw-r--r--   3 hilary supergroup          0 2018-03-16 12:53 /user/hilary/output_data/_SUCCESS
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:52 /user/hilary/output_data/part-m-00000
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:52 /user/hilary/output_data/part-m-00001
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:52 /user/hilary/output_data/part-m-00002
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:52 /user/hilary/output_data/part-m-00003
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:52 /user/hilary/output_data/part-m-00004
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:52 /user/hilary/output_data/part-m-00005
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:52 /user/hilary/output_data/part-m-00006
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:52 /user/hilary/output_data/part-m-00007
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:52 /user/hilary/output_data/part-m-00008
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:52 /user/hilary/output_data/part-m-00009
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:53 /user/hilary/output_data/part-m-00010
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:53 /user/hilary/output_data/part-m-00011
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:53 /user/hilary/output_data/part-m-00012
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:53 /user/hilary/output_data/part-m-00013
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:53 /user/hilary/output_data/part-m-00014
-rw-r--r--   3 hilary supergroup  409600000 2018-03-16 12:53 /user/hilary/output_data/part-m-00015
```


```
[hilary@xm1 ~]$ hadoop fsck -blocks /user/hilary
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

Connecting to namenode via http://xm1.eu-west-1.compute.internal:50070/fsck?ugi=hilary&blocks=1&path=%2Fuser%2Fhilary
FSCK started by hilary (auth:SIMPLE) from /172.32.153.9 for path /user/hilary at Fri Mar 16 12:55:39 EET 2018
..................Status: HEALTHY
 Total size:	8441542500 B
 Total dirs:	12
 Total files:	18
 Total symlinks:		0
 Total blocks (validated):	141 (avg. block size 59869095 B)
 Minimally replicated blocks:	141 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		3
 Number of racks:		1
FSCK ended at Fri Mar 16 12:55:39 EET 2018 in 8 milliseconds


The filesystem under path '/user/hilary' is HEALTHY
```


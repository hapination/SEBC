CLuster is kerberized


```
[hilary@xm1 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.maps=10 -Dmapreduce.job.reduces=10 output_data tsort
18/03/16 13:09:25 INFO terasort.TeraSort: starting
18/03/16 13:09:27 INFO hdfs.DFSClient: Created token for hilary: HDFS_DELEGATION_TOKEN owner=hilary@HAPINATION.NL, renewer=yarn, realUser=, issueDate=1521198567054, maxDate=1521803367054, sequenceNumber=1, masterKeyId=2 on 172.32.153.9:8020
18/03/16 13:09:27 INFO security.TokenCache: Got dt for hdfs://xm1.eu-west-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.32.153.9:8020, Ident: (token for hilary: HDFS_DELEGATION_TOKEN owner=hilary@HAPINATION.NL, renewer=yarn, realUser=, issueDate=1521198567054, maxDate=1521803367054, sequenceNumber=1, masterKeyId=2)
18/03/16 13:09:27 INFO input.FileInputFormat: Total input paths to process : 16
Spent 459ms computing base-splits.
Spent 5ms computing TeraScheduler splits.
Computing input splits took 465ms
Sampling 10 splits of 112
Making 10 from 100000 sampled records
Computing parititions took 873ms
Spent 1340ms computing partitions.
18/03/16 13:09:28 INFO client.RMProxy: Connecting to ResourceManager at xgw1.eu-west-1.compute.internal/172.32.16.40:8032
18/03/16 13:09:28 INFO mapreduce.JobSubmitter: number of splits:112
18/03/16 13:09:28 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1521198413004_0001
18/03/16 13:09:28 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.32.153.9:8020, Ident: (token for hilary: HDFS_DELEGATION_TOKEN owner=hilary@HAPINATION.NL, renewer=yarn, realUser=, issueDate=1521198567054, maxDate=1521803367054, sequenceNumber=1, masterKeyId=2)
18/03/16 13:09:29 INFO impl.YarnClientImpl: Submitted application application_1521198413004_0001
18/03/16 13:09:29 INFO mapreduce.Job: The url to track the job: http://xgw1.eu-west-1.compute.internal:8088/proxy/application_1521198413004_0001/
18/03/16 13:09:29 INFO mapreduce.Job: Running job: job_1521198413004_0001
18/03/16 13:09:40 INFO mapreduce.Job: Job job_1521198413004_0001 running in uber mode : false
18/03/16 13:09:40 INFO mapreduce.Job:  map 0% reduce 0%
18/03/16 13:09:48 INFO mapreduce.Job:  map 1% reduce 0%
18/03/16 13:09:55 INFO mapreduce.Job:  map 4% reduce 0%
18/03/16 13:09:56 INFO mapreduce.Job:  map 5% reduce 0%
18/03/16 13:10:02 INFO mapreduce.Job:  map 6% reduce 0%
18/03/16 13:10:04 INFO mapreduce.Job:  map 10% reduce 0%
18/03/16 13:10:08 INFO mapreduce.Job:  map 11% reduce 0%
18/03/16 13:10:12 INFO mapreduce.Job:  map 13% reduce 0%
18/03/16 13:10:13 INFO mapreduce.Job:  map 14% reduce 0%
18/03/16 13:10:14 INFO mapreduce.Job:  map 15% reduce 0%
18/03/16 13:10:20 INFO mapreduce.Job:  map 18% reduce 0%
18/03/16 13:10:21 INFO mapreduce.Job:  map 20% reduce 0%
18/03/16 13:10:26 INFO mapreduce.Job:  map 21% reduce 0%
18/03/16 13:13:06 INFO mapreduce.Job:  map 100% reduce 36%
18/03/16 13:13:08 INFO mapreduce.Job:  map 100% reduce 38%
18/03/16 13:13:10 INFO mapreduce.Job:  map 100% reduce 47%
18/03/16 13:13:16 INFO mapreduce.Job:  map 100% reduce 50%
18/03/16 13:13:18 INFO mapreduce.Job:  map 100% reduce 59%
18/03/16 13:13:20 INFO mapreduce.Job:  map 100% reduce 60%
18/03/16 13:13:23 INFO mapreduce.Job:  map 100% reduce 67%
18/03/16 13:13:24 INFO mapreduce.Job:  map 100% reduce 74%
18/03/16 13:13:27 INFO mapreduce.Job:  map 100% reduce 82%
18/03/16 13:13:28 INFO mapreduce.Job:  map 100% reduce 85%
18/03/16 13:13:30 INFO mapreduce.Job:  map 100% reduce 87%
18/03/16 13:13:33 INFO mapreduce.Job:  map 100% reduce 96%
18/03/16 13:13:34 INFO mapreduce.Job:  map 100% reduce 97%
18/03/16 13:13:35 INFO mapreduce.Job:  map 100% reduce 98%
18/03/16 13:13:37 INFO mapreduce.Job:  map 100% reduce 100%
18/03/16 13:13:38 INFO mapreduce.Job: Job job_1521198413004_0001 completed successfully
18/03/16 13:13:38 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=2909619935
		FILE: Number of bytes written=5779715703
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=6553616128
		HDFS: Number of bytes written=6553600000
		HDFS: Number of read operations=366
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=20
	Job Counters
		Launched map tasks=112
		Launched reduce tasks=10
		Data-local map tasks=112
		Total time spent by all maps in occupied slots (ms)=706564
		Total time spent by all reduces in occupied slots (ms)=302243
		Total time spent by all map tasks (ms)=706564
		Total time spent by all reduce tasks (ms)=302243
		Total vcore-milliseconds taken by all map tasks=706564
		Total vcore-milliseconds taken by all reduce tasks=302243
		Total megabyte-milliseconds taken by all map tasks=723521536
		Total megabyte-milliseconds taken by all reduce tasks=309496832
	Map-Reduce Framework
		Map input records=65536000
		Map output records=65536000
		Map output bytes=6684672000
		Map output materialized bytes=2851764312
		Input split bytes=16128
		Combine input records=0
		Combine output records=0
		Reduce input groups=65536000
		Reduce shuffle bytes=2851764312
		Reduce input records=65536000
		Reduce output records=65536000
		Spilled Records=131072000
		Shuffled Maps =1120
		Failed Shuffles=0
		Merged Map outputs=1120
		GC time elapsed (ms)=17603
		CPU time spent (ms)=760390
		Physical memory (bytes) snapshot=62681083904
		Virtual memory (bytes) snapshot=341040369664
		Total committed heap usage (bytes)=62904074240
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=6553600000
	File Output Format Counters
		Bytes Written=6553600000
18/03/16 13:13:38 INFO terasort.TeraSort: done

real	4m14.198s
user	0m11.644s
sys	0m0.517s
```


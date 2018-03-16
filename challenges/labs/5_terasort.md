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
```

command is still executing...
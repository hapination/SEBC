CLuster is kerberized


```
time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.maps=10 -Dmapreduce.job.reduces=10 output_data tsort
```

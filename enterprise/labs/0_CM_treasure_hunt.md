* What is ubertask optimization?

`Whether to enable ubertask optimization, which runs "sufficiently small" jobs sequentially within a single JVM. `


* Where in CM is the Kerberos Security Realm value displayed?

`Settings -> Kerberos = HADOOP.COM`


* Which CDH service(s) host a property for enabling Kerberos authentication?
 `Zookeeper, Oozie, Hue, HDFS, Hive, Yarn, basically all`

* How do you upgrade the CM agents?

`No help from search bar. But it is is done during CM upgrade`

* Give the `tsquery` statement used to chart Hue's CPU utilization?

`select cpu_user_rate / getHostFact(numCores, 1) * 100, cpu_system_rate / getHostFact(numCores, 1) * 100 where entityName="hue-HUE_SERVER-13fc1ea7bb04996b8e360275637f3be9"`

* Name all the roles that make up the Hive service

`Hive Server2, Hive Metastore server, Hive Gateway`

* What steps must be completed before integrating Cloudera Manager with Kerberos?
`You need to have a KDC. It is suggested that you also have TLS enabled.`

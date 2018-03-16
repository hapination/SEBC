```
[root@xm1 cloudera-scm-server]# hdfs dfs -ls /user
Found 7 items
drwxr-xr-x   - hilary supergroup          0 2018-03-16 12:31 /user/anupam
drwxr-xr-x   - hilary supergroup          0 2018-03-16 12:30 /user/hilary
drwxrwxrwx   - mapred hadoop              0 2018-03-16 12:25 /user/history
drwxrwxr-t   - hive   hive                0 2018-03-16 12:26 /user/hive
drwxrwxr-x   - hue    hue                 0 2018-03-16 12:26 /user/hue
drwxrwxr-x   - impala impala              0 2018-03-16 12:26 /user/impala
drwxrwxr-x   - oozie  oozie               0 2018-03-16 12:26 /user/oozie
```

```
[root@xm1 cloudera-scm-server]# curl -X GET -u admin:admin 'http://xm1:7180/api/v14/hosts'
{
  "items" : [ {
    "hostId" : "3fde6d97-a4d6-4708-b605-561830c0571b",
    "ipAddress" : "172.32.16.40",
    "hostname" : "xgw1.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/hostRedirect/3fde6d97-a4d6-4708-b605-561830c0571b",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15331524608
  }, {
    "hostId" : "27fa6233-a796-467d-8ac9-8ed5ec1d175f",
    "ipAddress" : "172.32.153.9",
    "hostname" : "xm1.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/hostRedirect/27fa6233-a796-467d-8ac9-8ed5ec1d175f",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15331524608
  }, {
    "hostId" : "2e117a9e-2325-4ee8-8f4c-0aaffa3669c9",
    "ipAddress" : "172.32.57.179",
    "hostname" : "xm2.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/hostRedirect/2e117a9e-2325-4ee8-8f4c-0aaffa3669c9",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15331524608
  }, {
    "hostId" : "83542d50-a6e6-4f3a-86ce-d79382980445",
    "ipAddress" : "172.32.63.1",
    "hostname" : "xs1.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/hostRedirect/83542d50-a6e6-4f3a-86ce-d79382980445",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15331524608
  }, {
    "hostId" : "867b4b2d-6f42-43a1-b83b-68dd64894ff6",
    "ipAddress" : "172.32.88.93",
    "hostname" : "xs2.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/hostRedirect/867b4b2d-6f42-43a1-b83b-68dd64894ff6",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15331524608
  }, {
    "hostId" : "1c12b2d5-cf37-43dc-a995-01d8c91817ae",
    "ipAddress" : "172.32.244.142",
    "hostname" : "xs3.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/hostRedirect/1c12b2d5-cf37-43dc-a995-01d8c91817ae",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15331524608
  } ]
}[root@xm1 cloudera-scm-server]#
```

```
[root@xm1 cloudera-scm-server]# curl -X GET -u admin:admin 'http://xm1:7180/api/v8/clusters'
{
  "items" : [ {
    "name" : "cluster",
    "displayName" : "hapination",
    "version" : "CDH5",
    "fullVersion" : "5.13.2",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ]
  } ]
}[root@xm1 cloudera-scm-server]#
```

```
[root@xm1 cloudera-scm-server]# curl -X GET -u admin:admin 'http://xm1:7180/api/v8/clusters'
{
  "items" : [ {
    "name" : "cluster",
    "displayName" : "hapination",
    "version" : "CDH5",
    "fullVersion" : "5.13.2",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ]
  } ]
}[root@xm1 cloudera-scm-server]# clear
[root@xm1 cloudera-scm-server]# curl -X GET -u admin:admin 'http://xm1:7180/api/v8/clusters/hapination/services'
{
  "items" : [ {
    "name" : "zookeeper",
    "type" : "ZOOKEEPER",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/serviceRedirect/zookeeper",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "ZOOKEEPER_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "ZOOKEEPER_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "ZooKeeper"
  }, {
    "name" : "oozie",
    "type" : "OOZIE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/serviceRedirect/oozie",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "OOZIE_OOZIE_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Oozie"
  }, {
    "name" : "hue",
    "type" : "HUE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hue",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HUE_HUE_SERVERS_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HUE_LOAD_BALANCER_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hue"
  }, {
    "name" : "hdfs",
    "type" : "HDFS",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hdfs",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HDFS_BLOCKS_WITH_CORRUPT_REPLICAS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_DATA_NODES_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_FREE_SPACE_REMAINING",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_HA_NAMENODE_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_MISSING_BLOCKS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_UNDER_REPLICATED_BLOCKS",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "HDFS"
  }, {
    "name" : "impala",
    "type" : "IMPALA",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/serviceRedirect/impala",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "IMPALA_ASSIGNMENT_LOCALITY",
      "summary" : "DISABLED"
    }, {
      "name" : "IMPALA_CATALOGSERVER_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "IMPALA_IMPALADS_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "IMPALA_STATESTORE_HEALTH",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Impala"
  }, {
    "name" : "yarn",
    "type" : "YARN",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/serviceRedirect/yarn",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "YARN_JOBHISTORY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_NODE_MANAGERS_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_RESOURCEMANAGERS_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_USAGE_AGGREGATION_HEALTH",
      "summary" : "DISABLED"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "YARN (MR2 Included)"
  }, {
    "name" : "hive",
    "type" : "HIVE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://xm1.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hive",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HIVE_HIVEMETASTORES_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HIVE_HIVESERVER2S_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hive"
  } ]
}[root@xm1 cloudera-scm-server]#
```


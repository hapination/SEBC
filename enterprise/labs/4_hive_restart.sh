* Stop
`curl -X POST -u hapination:cloudera 'http://xm1:7180/api/v12/clusters/Hapination/services/hive/commands/stop'`

```
{
  "id" : 449,
  "name" : "Stop",
  "startTime" : "2018-03-14T09:27:03.129Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
 }
```

* Start
`curl -X POST -u hapination:cloudera 'http://xm1:7180/api/v12/clusters/Hapination/services/hive/commands/start'`

```
{
  "id" : 453,
  "name" : "Start",
  "startTime" : "2018-03-14T09:28:02.891Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```
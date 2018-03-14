Get API version

```
curl -X GET -u hapination:cloudera 'http://xm1:7180/api/version'
v19
```

Get CM version

```
curl -X GET -u hapination:cloudera 'http://xm1:7180/api/v12/cm/version'
{
  "version" : "5.14.1",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20180207-1728",
  "gitHash" : "f253d8e2b9cf5cb61a2f1ba1bf71de6fb603add0",
  "snapshot" : false
}
```

Get all users

```
curl -X GET -u hapination:cloudera 'http://xm1:7180/api/v19/users/'
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "hapination",
    "roles" : [ "ROLE_ADMIN" ]
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  } ]
}
```

Get db info
```
curl -X GET -u hapination:cloudera 'http://xm1:7180/api/v19/cm/scmDbInfo'
{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}
```
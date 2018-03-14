```
{
  "timestamp" : "2018-03-14T09:06:33.215Z",
  "clusters" : [ {
    "name" : "cluster",
    "displayName" : "Hapination",
    "version" : "CDH5",
    "fullVersion" : "5.9.3",
    "services" : [ {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-13fc1ea7bb04996b8e360275637f3be9",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-04cc05b3a326c4edb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ef8734fpu163q5gsqhi19an0a"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "zookeeper-SERVER-BASE"
        }
      }, {
        "name" : "zookeeper-SERVER-178074eb3ca44e0ab3b9eea00704c773",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-0d89a059aa9e04fdb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7fprlct0os242x2zjn9hogj4u"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "zookeeper-SERVER-BASE"
        }
      }, {
        "name" : "zookeeper-SERVER-190d296620453aa1cf14592e1b4745a6",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-0dcba5d176c039c87"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8rajcbgcicp2yvihh73saqy2"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "zookeeper-SERVER-BASE"
        }
      } ],
      "displayName" : "ZooKeeper",
      "roleConfigGroups" : [ {
        "name" : "zookeeper-SERVER-BASE",
        "displayName" : "Server Default Group",
        "roleType" : "SERVER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "zookeeper"
        },
        "config" : {
          "items" : [ ]
        }
      } ]
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-13fc1ea7bb04996b8e360275637f3be9",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "i-04cc05b3a326c4edb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8fcvq1pzqouiwg72242isv16e"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "oozie-OOZIE_SERVER-BASE"
        }
      } ],
      "displayName" : "Oozie",
      "roleConfigGroups" : [ {
        "name" : "oozie-OOZIE_SERVER-BASE",
        "displayName" : "Oozie Server Default Group",
        "roleType" : "OOZIE_SERVER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "oozie"
        },
        "config" : {
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "xm1.eu-west-1.compute.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "oozie_pass"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          } ]
        }
      } ]
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "items" : [ {
          "name" : "database_host",
          "value" : "xm1.eu-west-1.compute.internal"
        }, {
          "name" : "database_password",
          "value" : "hue_pass"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-190d296620453aa1cf14592e1b4745a6"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-13fc1ea7bb04996b8e360275637f3be9",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "i-04cc05b3a326c4edb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6hhv96o5k1cupnk515xv6mx04"
          }, {
            "name" : "secret_key",
            "value" : "PCktbfGorKWaSeipse6nldX2UvioJ5"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hue-HUE_SERVER-BASE"
        }
      } ],
      "displayName" : "Hue",
      "roleConfigGroups" : [ {
        "name" : "hue-HUE_LOAD_BALANCER-BASE",
        "displayName" : "Load Balancer Default Group",
        "roleType" : "HUE_LOAD_BALANCER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hue"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hue-HUE_SERVER-BASE",
        "displayName" : "Hue Server Default Group",
        "roleType" : "HUE_SERVER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hue"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hue-KT_RENEWER-BASE",
        "displayName" : "Kerberos Ticket Renewer Default Group",
        "roleType" : "KT_RENEWER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hue"
        },
        "config" : {
          "items" : [ ]
        }
      } ]
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "PtQ0rkraTLwdXqGOaum0utfJlUb0pM"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "XPzWWhBOZso1Io0yHye9IhVzEasgx4"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "p9VCn0JlJRO701GiWCxTLM9WNCNeWw"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "20"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-178074eb3ca44e0ab3b9eea00704c773",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "i-0d89a059aa9e04fdb"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-BALANCER-BASE"
        }
      }, {
        "name" : "hdfs-DATANODE-17e4b80fa4e595a04ffa7a466042e142",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0ec3ad9ea3cdbb5a8"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "am7gq8hu3phs0g5aohuq2v4q9"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-DATANODE-BASE"
        }
      }, {
        "name" : "hdfs-DATANODE-3ea16046e6188e638441f69668f665bd",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0667bcf2a69d227e5"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3my0i6wl2zbl3igq8yl44afqr"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-DATANODE-BASE"
        }
      }, {
        "name" : "hdfs-DATANODE-585588aa2e13c2663362235d391a33bc",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0ef27ffa5fa21dfc9"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3co0huullql2jvoc5zh7gmrwy"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-DATANODE-BASE"
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-178074eb3ca44e0ab3b9eea00704c773",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-0d89a059aa9e04fdb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "30qqkbad37q65rac9x28b9g63"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-FAILOVERCONTROLLER-BASE"
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-190d296620453aa1cf14592e1b4745a6",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-0dcba5d176c039c87"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8qroavucferswznxunsghw0yn"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-FAILOVERCONTROLLER-BASE"
        }
      }, {
        "name" : "hdfs-GATEWAY-13fc1ea7bb04996b8e360275637f3be9",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-04cc05b3a326c4edb"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-GATEWAY-BASE"
        }
      }, {
        "name" : "hdfs-HTTPFS-190d296620453aa1cf14592e1b4745a6",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "i-0dcba5d176c039c87"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6w582xtjcovclwjo4mgxeqa0c"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-HTTPFS-BASE"
        }
      }, {
        "name" : "hdfs-JOURNALNODE-13fc1ea7bb04996b8e360275637f3be9",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-04cc05b3a326c4edb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9yqb4z03om5afbhbjuyxwvrqo"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-JOURNALNODE-BASE"
        }
      }, {
        "name" : "hdfs-JOURNALNODE-178074eb3ca44e0ab3b9eea00704c773",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-0d89a059aa9e04fdb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "a4w3mrrtzvzc6cjikgahx6rb9"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-JOURNALNODE-BASE"
        }
      }, {
        "name" : "hdfs-JOURNALNODE-190d296620453aa1cf14592e1b4745a6",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-0dcba5d176c039c87"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "brrgcwuypp8wkfux94vql16rj"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-JOURNALNODE-BASE"
        }
      }, {
        "name" : "hdfs-NAMENODE-178074eb3ca44e0ab3b9eea00704c773",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-0d89a059aa9e04fdb"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "64"
          }, {
            "name" : "role_jceks_password",
            "value" : "20rqn04on7c33jwb9w5ivd2x"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-NAMENODE-BASE"
        }
      }, {
        "name" : "hdfs-NAMENODE-190d296620453aa1cf14592e1b4745a6",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-0dcba5d176c039c87"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "40"
          }, {
            "name" : "role_jceks_password",
            "value" : "60cqnx5im1w0n4zvh8oyc4v9t"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hdfs-NAMENODE-BASE"
        }
      } ],
      "displayName" : "HDFS",
      "roleConfigGroups" : [ {
        "name" : "hdfs-BALANCER-BASE",
        "displayName" : "Balancer Default Group",
        "roleType" : "BALANCER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-BASE",
        "displayName" : "DataNode Default Group",
        "roleType" : "DATANODE",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "5367486464"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "400"
          }, {
            "name" : "rm_io_weight",
            "value" : "200"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-BASE",
        "displayName" : "Failover Controller Default Group",
        "roleType" : "FAILOVERCONTROLLER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-GATEWAY-BASE",
        "displayName" : "Gateway Default Group",
        "roleType" : "GATEWAY",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }
      }, {
        "name" : "hdfs-HTTPFS-BASE",
        "displayName" : "HttpFS Default Group",
        "roleType" : "HTTPFS",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-BASE",
        "displayName" : "JournalNode Default Group",
        "roleType" : "JOURNALNODE",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/var/journalnode"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-BASE",
        "displayName" : "NameNode Default Group",
        "roleType" : "NAMENODE",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "3642753024"
          }, {
            "name" : "role_config_suppression_namenode_java_heapsize_minimum_validator",
            "value" : "true"
          } ]
        }
      }, {
        "name" : "hdfs-NFSGATEWAY-BASE",
        "displayName" : "NFS Gateway Default Group",
        "roleType" : "NFSGATEWAY",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-SECONDARYNAMENODE-BASE",
        "displayName" : "SecondaryNameNode Default Group",
        "roleType" : "SECONDARYNAMENODE",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hdfs"
        },
        "config" : {
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "3642753024"
          } ]
        }
      } ],
      "replicationSchedules" : [ {
        "id" : 3,
        "startTime" : "2018-03-13T10:14:19.264Z",
        "interval" : 0,
        "intervalUnit" : "MINUTE",
        "paused" : false,
        "nextRun" : null,
        "alertOnStart" : false,
        "alertOnSuccess" : false,
        "alertOnFail" : false,
        "alertOnAbort" : false,
        "hdfsArguments" : {
          "sourceService" : {
            "peerName" : "ronvander",
            "clusterName" : "cluster",
            "serviceName" : "hdfs"
          },
          "sourcePath" : "/user/ronvander",
          "destinationPath" : "/ronvander",
          "mapreduceServiceName" : "yarn",
          "dryRun" : false,
          "abortOnError" : false,
          "removeMissingFiles" : false,
          "preserveReplicationCount" : true,
          "preserveBlockSize" : true,
          "preservePermissions" : true,
          "skipChecksumChecks" : false,
          "skipTrash" : false,
          "replicationStrategy" : "DYNAMIC",
          "preserveXAttrs" : false,
          "exclusionFilters" : [ ]
        },
        "active" : false
      } ],
      "snapshotPolicies" : [ ]
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "80"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "k1ilPBJ6r8Ny0h6eaoFhEvlZG4pZar"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-GATEWAY-13fc1ea7bb04996b8e360275637f3be9",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-04cc05b3a326c4edb"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-GATEWAY-BASE"
        }
      }, {
        "name" : "yarn-GATEWAY-178074eb3ca44e0ab3b9eea00704c773",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0d89a059aa9e04fdb"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-GATEWAY-BASE"
        }
      }, {
        "name" : "yarn-GATEWAY-17e4b80fa4e595a04ffa7a466042e142",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0ec3ad9ea3cdbb5a8"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-GATEWAY-BASE"
        }
      }, {
        "name" : "yarn-GATEWAY-190d296620453aa1cf14592e1b4745a6",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0dcba5d176c039c87"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-GATEWAY-BASE"
        }
      }, {
        "name" : "yarn-GATEWAY-3ea16046e6188e638441f69668f665bd",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0667bcf2a69d227e5"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-GATEWAY-BASE"
        }
      }, {
        "name" : "yarn-GATEWAY-585588aa2e13c2663362235d391a33bc",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0ef27ffa5fa21dfc9"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-GATEWAY-BASE"
        }
      }, {
        "name" : "yarn-JOBHISTORY-178074eb3ca44e0ab3b9eea00704c773",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "i-0d89a059aa9e04fdb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "aixk9dcw7k6esxp5rokuv2q7k"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-JOBHISTORY-BASE"
        }
      }, {
        "name" : "yarn-NODEMANAGER-17e4b80fa4e595a04ffa7a466042e142",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0ec3ad9ea3cdbb5a8"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "b54qd1jpodc356d6xs0gtamp0"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-NODEMANAGER-BASE"
        }
      }, {
        "name" : "yarn-NODEMANAGER-3ea16046e6188e638441f69668f665bd",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0667bcf2a69d227e5"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9qermkjdf0olqk6e72qdcljyy"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-NODEMANAGER-BASE"
        }
      }, {
        "name" : "yarn-NODEMANAGER-585588aa2e13c2663362235d391a33bc",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0ef27ffa5fa21dfc9"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "amhdd692tg7a99y6ufrdq544j"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-NODEMANAGER-BASE"
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-190d296620453aa1cf14592e1b4745a6",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "i-0dcba5d176c039c87"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "46"
          }, {
            "name" : "role_jceks_password",
            "value" : "d7h3bg7t31mh5z2un4drqrwnr"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "yarn-RESOURCEMANAGER-BASE"
        }
      } ],
      "displayName" : "YARN (MR2 Included)",
      "roleConfigGroups" : [ {
        "name" : "yarn-GATEWAY-BASE",
        "displayName" : "Gateway Default Group",
        "roleType" : "GATEWAY",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "yarn"
        },
        "config" : {
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "4"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "1"
          } ]
        }
      }, {
        "name" : "yarn-JOBHISTORY-BASE",
        "displayName" : "JobHistory Server Default Group",
        "roleType" : "JOBHISTORY",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "yarn"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-BASE",
        "displayName" : "NodeManager Default Group",
        "roleType" : "NODEMANAGER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "yarn"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_cpu_shares",
            "value" : "1600"
          }, {
            "name" : "rm_io_weight",
            "value" : "800"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "4938"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-BASE",
        "displayName" : "ResourceManager Default Group",
        "roleType" : "RESOURCEMANAGER",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "yarn"
        },
        "config" : {
          "items" : [ {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "4938"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        }
      } ]
    }, {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "xm1.eu-west-1.compute.internal"
        }, {
          "name" : "hive_metastore_database_name",
          "value" : "hive"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "hive_pass"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-13fc1ea7bb04996b8e360275637f3be9",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-04cc05b3a326c4edb"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-GATEWAY-BASE"
        }
      }, {
        "name" : "hive-GATEWAY-178074eb3ca44e0ab3b9eea00704c773",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0d89a059aa9e04fdb"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-GATEWAY-BASE"
        }
      }, {
        "name" : "hive-GATEWAY-17e4b80fa4e595a04ffa7a466042e142",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0ec3ad9ea3cdbb5a8"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-GATEWAY-BASE"
        }
      }, {
        "name" : "hive-GATEWAY-190d296620453aa1cf14592e1b4745a6",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0dcba5d176c039c87"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-GATEWAY-BASE"
        }
      }, {
        "name" : "hive-GATEWAY-3ea16046e6188e638441f69668f665bd",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0667bcf2a69d227e5"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-GATEWAY-BASE"
        }
      }, {
        "name" : "hive-GATEWAY-585588aa2e13c2663362235d391a33bc",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0ef27ffa5fa21dfc9"
        },
        "config" : {
          "items" : [ ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-GATEWAY-BASE"
        }
      }, {
        "name" : "hive-HIVEMETASTORE-178074eb3ca44e0ab3b9eea00704c773",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "i-0d89a059aa9e04fdb"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "4qq9wki2zt6re2ciw1bi7rihc"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-HIVEMETASTORE-BASE"
        }
      }, {
        "name" : "hive-HIVESERVER2-190d296620453aa1cf14592e1b4745a6",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "i-0dcba5d176c039c87"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7okwsg74eq8re0g0eybbysu9x"
          } ]
        },
        "roleConfigGroupRef" : {
          "roleConfigGroupName" : "hive-HIVESERVER2-BASE"
        }
      } ],
      "displayName" : "Hive",
      "roleConfigGroups" : [ {
        "name" : "hive-GATEWAY-BASE",
        "displayName" : "Gateway Default Group",
        "roleType" : "GATEWAY",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hive"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-BASE",
        "displayName" : "Hive Metastore Server Default Group",
        "roleType" : "HIVEMETASTORE",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hive"
        },
        "config" : {
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "3642753024"
          }, {
            "name" : "hive_metastore_server_max_message_size",
            "value" : "364275302"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-BASE",
        "displayName" : "HiveServer2 Default Group",
        "roleType" : "HIVESERVER2",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hive"
        },
        "config" : {
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "3642753024"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "4401188044"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "740"
          } ]
        }
      }, {
        "name" : "hive-WEBHCAT-BASE",
        "displayName" : "WebHCat Server Default Group",
        "roleType" : "WEBHCAT",
        "base" : true,
        "serviceRef" : {
          "clusterName" : "cluster",
          "serviceName" : "hive"
        },
        "config" : {
          "items" : [ ]
        }
      } ],
      "replicationSchedules" : [ ]
    } ],
    "parcels" : [ {
      "product" : "CDH",
      "version" : "5.9.3-1.cdh5.9.3.p0.4",
      "stage" : "DISTRIBUTED",
      "clusterRef" : {
        "clusterName" : "cluster"
      }
    }, {
      "product" : "CDH",
      "version" : "5.9.3-1.cdh5.9.3.p0.4",
      "stage" : "ACTIVATED",
      "clusterRef" : {
        "clusterName" : "cluster"
      }
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "i-04cc05b3a326c4edb",
    "ipAddress" : "172.32.239.60",
    "hostname" : "xgw1.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0dcba5d176c039c87",
    "ipAddress" : "172.32.219.218",
    "hostname" : "xm1.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0d89a059aa9e04fdb",
    "ipAddress" : "172.32.247.216",
    "hostname" : "xm2.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "host_config_suppression_memory_overcommitted_validator",
        "value" : "true"
      } ]
    }
  }, {
    "hostId" : "i-0667bcf2a69d227e5",
    "ipAddress" : "172.32.64.16",
    "hostname" : "xs1.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0ec3ad9ea3cdbb5a8",
    "ipAddress" : "172.32.58.121",
    "hostname" : "xs2.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0ef27ffa5fa21dfc9",
    "ipAddress" : "172.32.2.206",
    "hostname" : "xs3.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__d75cba63-274a-43f1-a534-f4e2f4588c25",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "d717eb1c89f39e80447e6053bf508c06fa4fdc56b2528d4be0d38807ab922bbe",
    "pwSalt" : -6170553825027380484,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-13fc1ea7bb04996b8e360275637f3be9",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "dd4814ac4ede41d459f308f96c20ed17517d290c16711bd41d86fa85d32af307",
    "pwSalt" : 8522237494685204224,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-13fc1ea7bb04996b8e360275637f3be9",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "86ec5d74d531726eefe00702d1bc9b5573c0ba9d80a2355071d49b5f165c1478",
    "pwSalt" : 4906657692031195376,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-13fc1ea7bb04996b8e360275637f3be9",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "05c27040c52e63d696ce853eb83121ae35a82100b4105827fcf190c618ae1470",
    "pwSalt" : -2867436113289049222,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-13fc1ea7bb04996b8e360275637f3be9",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "aa75bc7fc770c85f6d44812c06f007073056e4d635aab06bf6899be2c7327433",
    "pwSalt" : 5417381832015083685,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "db23f6069a846cd1f91c7e6c466c519c2df1e8525ed26a86e53ab68616115887",
    "pwSalt" : -3166103262810960824,
    "pwLogin" : true
  }, {
    "name" : "hapination",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "a95091c925942cb706ce5eb58ea759544bc61246ed9c3dd5b99d5c5faa2228fa",
    "pwSalt" : 6038275890162794319,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "707c1089d43695759e39d6e62ce90467f7fc2f981a9232efc8cac91a01889479",
    "pwSalt" : 5243628464637095437,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.9.3",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20170627-1506",
    "gitHash" : "23506bb4e114dd460bdac64c57a672e6be631907",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ALERTPUBLISHER-13fc1ea7bb04996b8e360275637f3be9",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "i-04cc05b3a326c4edb"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "bs98niavk88vmghm689s78tx5"
        } ]
      },
      "roleConfigGroupRef" : {
        "roleConfigGroupName" : "mgmt-ALERTPUBLISHER-BASE"
      }
    }, {
      "name" : "mgmt-EVENTSERVER-13fc1ea7bb04996b8e360275637f3be9",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "i-04cc05b3a326c4edb"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "c30ougmggjijizdl4k0ppp4b5"
        } ]
      },
      "roleConfigGroupRef" : {
        "roleConfigGroupName" : "mgmt-EVENTSERVER-BASE"
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-13fc1ea7bb04996b8e360275637f3be9",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "i-04cc05b3a326c4edb"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "e1qq1ua5810e67385sx52pu2a"
        } ]
      },
      "roleConfigGroupRef" : {
        "roleConfigGroupName" : "mgmt-HOSTMONITOR-BASE"
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-13fc1ea7bb04996b8e360275637f3be9",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "i-04cc05b3a326c4edb"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "4hjgfi03p9duatm7d912x2xb5"
        } ]
      },
      "roleConfigGroupRef" : {
        "roleConfigGroupName" : "mgmt-REPORTSMANAGER-BASE"
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-13fc1ea7bb04996b8e360275637f3be9",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "i-04cc05b3a326c4edb"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "4gtrkffot6er2oynbasjq4vak"
        } ]
      },
      "roleConfigGroupRef" : {
        "roleConfigGroupName" : "mgmt-SERVICEMONITOR-BASE"
      }
    } ],
    "displayName" : "Cloudera Management Service",
    "roleConfigGroups" : [ {
      "name" : "mgmt-ACTIVITYMONITOR-BASE",
      "displayName" : "Activity Monitor Default Group",
      "roleType" : "ACTIVITYMONITOR",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ ]
      }
    }, {
      "name" : "mgmt-ALERTPUBLISHER-BASE",
      "displayName" : "Alert Publisher Default Group",
      "roleType" : "ALERTPUBLISHER",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-BASE",
      "displayName" : "Event Server Default Group",
      "roleType" : "EVENTSERVER",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-BASE",
      "displayName" : "Host Monitor Default Group",
      "roleType" : "HOSTMONITOR",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      }
    }, {
      "name" : "mgmt-NAVIGATOR-BASE",
      "displayName" : "Navigator Audit Server Default Group",
      "roleType" : "NAVIGATOR",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ ]
      }
    }, {
      "name" : "mgmt-NAVIGATORMETASERVER-BASE",
      "displayName" : "Navigator Metadata Server Default Group",
      "roleType" : "NAVIGATORMETASERVER",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-BASE",
      "displayName" : "Reports Manager Default Group",
      "roleType" : "REPORTSMANAGER",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "xm1.eu-west-1.compute.internal"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "rman_pass"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-BASE",
      "displayName" : "Service Monitor Default Group",
      "roleType" : "SERVICEMONITOR",
      "base" : true,
      "serviceRef" : {
        "serviceName" : "mgmt"
      },
      "config" : {
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      }
    } ]
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/26/2012 9:20"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  },
  "allHostsConfig" : {
    "items" : [ {
      "name" : "host_config_suppression_memory_overcommitted_validator",
      "value" : "true"
    }, {
      "name" : "rm_enabled",
      "value" : "true"
    } ]
  },
  "peers" : [ {
    "name" : "ronvander",
    "type" : "REPLICATION",
    "url" : "http://ec2-52-211-181-225.eu-west-1.compute.amazonaws.com:7180",
    "username" : "__cloudera_internal_user__8a21d0c4-a2f1-46bb-8205-79108090fdbf",
    "password" : "ad6b473a-0622-410c-8f0c-4fbdff18ab49c0f83774-bbf8-4171-a9a7-bd5c84522a21",
    "clouderaManagerCreatedUser" : true
  } ],
  "hostTemplates" : {
    "items" : [ ]
  }
}
```
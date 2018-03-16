Cloud provider `AWS`

Instances (public ip address can be deduced from public dns name)

```
xgw1 ec2-54-229-59-148.eu-west-1.compute.amazonaws.com
xm1 ec2-54-194-129-9.eu-west-1.compute.amazonaws.com
xm2 ec2-34-240-203-40.eu-west-1.compute.amazonaws.com
xs1 ec2-34-240-158-12.eu-west-1.compute.amazonaws.com
xs2 ec2-54-246-245-226.eu-west-1.compute.amazonaws.com
xs3 ec2-52-19-67-150.eu-west-1.compute.amazonaws.com
```

Linux release

`ami-061b1560`

CentOS 7 x86_64

File system on xgw1

```
[centos@xgw1 ~]$ df -H
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       54G  1.9G   52G   4% /
devtmpfs        7.8G     0  7.8G   0% /dev
tmpfs           7.7G     0  7.7G   0% /dev/shm
tmpfs           7.7G   18M  7.7G   1% /run
tmpfs           7.7G     0  7.7G   0% /sys/fs/cgroup
tmpfs           1.6G     0  1.6G   0% /run/user/1000
tmpfs           1.6G     0  1.6G   0% /run/user/0
```


Enabled repos
```
[root@xgw1 /]# yum repolist enabled
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: ftp.heanet.ie
 * extras: ftp.heanet.ie
 * updates: ftp.heanet.ie
repo id                             repo name                             status
base/7/x86_64                       CentOS-7 - Base                       9,591
extras/7/x86_64                     CentOS-7 - Extras                       436
updates/7/x86_64                    CentOS-7 - Updates                    2,407
repolist: 12,434
```

/etc/passwd

```
hilary:x:2800:1002::/home/hilary:/bin/bash
anupam:x:2900:1001::/home/anupam:/bin/bash
```

/etc/group

```
analytics:x:1001:
datasci:x:1002:
```
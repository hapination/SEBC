Using instructions from https://www.cloudera.com/documentation/enterprise/latest/topics/cm_ig_install_path_b.html

Going to install CDM/CDH 5.9 point repos to, this is for later use
* https://archive.cloudera.com/cdh5/redhat/7/x86_64/cdh/5.9/
* https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/5.9/

Running commands through ansible for all hosts:

`ansible -u centos -i inventory/x all -a "uptime"`

1)
Checking swappiness for all hosts:

echo $(sysctl vm.swappiness)

Set swappiness (requires restart to become effective?):

`echo 'vm.swappiness = 1' >> /etc/sysctl.conf`

and to have it become effective right away

`sysctl vm.swappiness=1`

We also want to disable ipv6 (mostly is not used)

`echo 'net.ipv6.conf.default.disable_ipv6=1' >> /etc/sysctl.conf`

`echo 'net.ipv6.conf.all.disable_ipv6=1' >> /etc/sysctl.conf`

Disable SE linux, edit /etc/sysconfig/selinux and set SELINUX=disabled.
Check status with

`sestatus`

Set the user limits to maximum file descriptors and processes

	echo 'fs.file-max = 100000' >> /etc/sysctl.conf
	echo 'kernel.pid_max = 4194303' >> /etc/sysctl.conf


```

```


2)
Check mount points:
`cat /etc/fstab`

```
UUID=cdbab22a-45d6-4cce-95a3-681f42187a46 /                       ext4    defaults        1 1
tmpfs                   /dev/shm                tmpfs   defaults        0 0
devpts                  /dev/pts                devpts  gid=5,mode=620  0 0
sysfs                   /sys                    sysfs   defaults        0 0
proc                    /proc                   proc    defaults        0 0
```

I just noticed with `df -h` that the AWS instances were not using the whole specified disk. 
I hadn't changed the disk mounts. Had to fdisk the volumes to show full disk allocations

`df -H`
```
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       53G  706M   50G   2% /
tmpfs           7.9G     0  7.9G   0% /dev/shm
```

3)
Reserved :
`tune2fs -l /dev/xvda1 | grep Reserved`

```
Reserved block count:     655199
Reserved GDT blocks:      508
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)
```

4)
Hugepage setting, in file /etc/rc.d/rc.local (requires restart)
 * /sys/kernel/mm/transparent_hugepage/defrag never
 * /sys/kernel/mm/transparent_hugepage/enabled never
 
Execute this to get the value in effect immediately:

`echo never > /sys/kernel/mm/transparent_hugepage/enabled && echo never > /sys/kernel/mm/transparent_hugepage/defrag`

5)
Network configuration

`ifconfig`

```
eth0      Link encap:Ethernet  HWaddr 02:CA:AE:31:37:B8
          inet addr:172.32.151.125  Bcast:172.32.255.255  Mask:255.255.0.0
          inet6 addr: fe80::ca:aeff:fe31:37b8/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:9001  Metric:1
          RX packets:14198 errors:0 dropped:0 overruns:0 frame:0
          TX packets:6123 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:16930619 (16.1 MiB)  TX bytes:507218 (495.3 KiB)
          Interrupt:145

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 b)  TX bytes:0 (0.0 b)
```

Check firewall
`service iptables status`

It needs to be disabled
`chkconfig iptables off`

6)
Check resolver order. I am using /etc/hosts
`cat /etc/nsswitch.conf`

`hosts:      files dns`

Resolving, I am not using fqdn only the short names (xm1,xm2, xs1, xs2, xgw1). Machines have been set up without domain names.
`getent hosts`

```
127.0.0.1       localhost localhost.localdomain localhost4 localhost4.localdomain4
127.0.0.1       localhost localhost.localdomain localhost6 localhost6.localdomain6
172.32.49.168   xm1.eu-west-1.compute.internal xm1
172.32.19.83    xm2.eu-west-1.compute.internal xm2
172.32.150.77   xs1.eu-west-1.compute.internal xs1
172.32.123.130  xs2.eu-west-1.compute.internal xs2
172.32.151.125  xgw1.eu-west-1.compute.internal xgw1
```

7)
NSCD

```
[root@xgw1 ~]# service nscd status
nscd is stopped
[root@xgw1 ~]# chkconfig nscd on
[root@xgw1 ~]# service nscd start
Starting nscd:                                             [  OK  ]
``

8)
NTPD
`service ntpd status`

`chkconfig ntpd on`

`service ntpd status`

`ntpd (pid  9195) is running...`

`ntpq -p`

```
     remote           refid      st t when poll reach   delay   offset  jitter
==============================================================================
+chris.magnet.ie 195.66.241.3     2 u   30   64  377    1.378    9.584   5.337
 ec2-52-209-118- 89.101.218.6     2 u  129   64  102    0.891    6.821   6.821
*ec2-52-17-30-11 89.101.218.6     2 u   21   64  377    0.769    9.291   5.150
```

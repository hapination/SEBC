```
[kdcdefaults]
 kdc_ports = 88
 kdc_tcp_ports = 88

[realms]
  HAPINATION.NL = {
  #master_key_type = aes256-cts
  acl_file = /var/kerberos/krb5kdc/kadm5.acl
  dict_file = /usr/share/dict/words
  admin_keytab = /var/kerberos/krb5kdc/kadm5.keytab
  supported_enctypes = aes256-cts:normal aes128-cts:normal des3-hmac-sha1:normal arcfour-hmac:normal des-hmac-sha1:normal des-cbc-md5:normal des-cbc-crc:normal
  max_life = 1d
  max_renewable_life = 7d
 }

```

rest of the files no time to copy the contents:

```
[root@xm1 cloudera-scm-server]# ls -al /var/kerberos/krb5kdc/
total 60
drwxr-xr-x. 2 root root   152 Mar 16 13:02 .
drwxr-xr-x. 4 root root    33 Mar 16 12:59 ..
-rw-------. 1 root root    78 Mar 16 13:02 .k5.HAPINATION.NL
-rw-------. 1 root root    57 Mar 16 12:59 kadm5.acl
-rw-------. 1 root root   451 Mar 16 12:59 kdc.conf
-rw-------. 1 root root 40960 Mar 16 13:05 principal
-rw-------. 1 root root  8192 Mar 16 13:02 principal.kadm5
-rw-------. 1 root root     0 Mar 16 13:02 principal.kadm5.lock
-rw-------. 1 root root     0 Mar 16 13:06 principal.ok
[root@xm1 cloudera-scm-server]#
```


OUT OF TIME

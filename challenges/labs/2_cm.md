I ahd massive troubles with musql I had to install a new instance on xm1 to get it finally working.
I didn't take the output from the create database script.
But here is the execution command

```
 export CMF_JDBC_DRIVER_JAR=/usr/share/java/mysql-connector-java.jar ; export HOST=xm1.eu-west-1.compute.internal ; /usr/share/cmf/schema/scm_prepare_database.sh mysql -v -h $HOST -utemp -ptemp --scm-host $HOST scm scm scm
 

```
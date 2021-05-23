# Local #
**To install a local database**, run the following to create a local instance.

```shell script
helm upgrade --install pgdb deploy/pgdb --set local.create=true --set local.host_auth_method=trust --set pgadmin.create=true --set pgadmin.image.pullPolicy=Always
```

**To install a local cloud_sql_proxy**, run the following 
and replace ```<instance_name>``` with the cloud_sql instance name.

```shell script
helm upgrade --install pgdb deploy/pgdb --set proxy.create=true --set proxy.instance_name=<instance_name>
```

# Production #

**To deploy to production**, run the following and replace ```<cloud_sql_private_ip>``` 
with private IP address for the cloud_sql instance.

```shell script
helm upgrade pgdb deploy/pgdb --install --set endpoint.ip=<cloud_sql_private_ip> --set endpoint.create=true --set pgadmin.create=true --set pgadmin.image.pullPolicy=Always
```
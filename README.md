# Local #
**To install a local database**, run the following to create a local instance.

```shell script
helm upgrade --install pgdb deploy/pgdb --set local.create=true --set local.host_auth_method=trust --set pgadmin.create=true --set pgadmin.pullPolicy=Always
```

Then, to set up port-forwarding to pgadmin, run the following

```shell script
kubectl port-forward svc/pgadmin-svc 32347:80
```

Then, to set up port-forwarding to pgdb-svc, run the following

```shell script
kubectl port-forward svc/pgdb-svc 32346:5432
```

**To install a local cloud_sql_proxy**, run the following 
and replace ```<instance_name>``` with the cloud_sql instance name.

```shell script
helm upgrade --install --namespace cloudsqlproxy pgdb deploy/pgdb --set proxy.create=true --set proxy.instance_name=<instance_name>
```

# Production #

**To deploy to production**, run the following and replace ```<cloud_sql_private_ip>``` 
with private IP address for the cloud_sql instance.

```shell script
helm upgrade --install pgdb deploy/pgdb --install \
--set endpoint.ip=<cloud_sql_private_ip> \
--set endpoint.create=true \
--set pgadmin.create=true \
--set pgadmin.image.pullPolicy=Always
```
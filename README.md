Zabbix on Kubernetes
====================

Still not ready!

Zabbix on multinode Kubernetes cluster - architecture:

- zabbix-frontend: service + replication controller with 1+ replicas
- zabbix-backend: service + replication controller with 1 replica
- zabbix-db: service + replication controller with 1 replica and 1 persistent 
storage

![Zabbix on Kubernetes schema](https://raw.githubusercontent.com/monitoringartist/kubernetes-zabbix/master/doc/kubernetes-zabbix-schema.png)

Start:

```
kubectl create -f zabbix-all-in-one.yaml
```

```
kubectl get svc | grep zabbix
kubectl get rc | grep zabbix
kubectl get po | grep zabbix
```

# Zabbix on Kubernetes (beta)

Zabbix on multinode Kubernetes cluster - architecture:

- zabbix-web: service + replication controller with 1+ replicas
- zabbix-server: service + replication controller with 1 replica
- zabbix-db: service + replication controller with 1 replica

It's only concept! Zabbix-db pod uses ephemeral in memory storage! Customize
yaml files for your environment.

Please donate to author, so he can continue to publish another awesome projects
for free:

[![Paypal donate button](http://jangaraj.com/img/github-donate-button02.png)]
(https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=8LB6J222WRUZ4)

YAML files:

- zabbix-all-in-one-bare-metal.yaml:

Zabbix infrastructure on bate metal Kubernetes cluster (GCE - Google Computer 
Engine can be used eventually). It needs own load balancer. Recommended
[HAProxy Kubernetes loadbalancer]
(https://github.com/kubernetes/contrib/tree/master/service-loadbalancer)

- zabbix-all-in-one-gke.yaml:

Zabbix infrastructure on Google Container Engine Kubernetes cluster. Cloud
network balancing is used.

- grafana-with-zabbix-datasource.yaml:

[Grafana XXL](https://github.com/monitoringartist/grafana-xxl) with Zabbix datasource.

## Schema

![Zabbix on Kubernetes schema](https://raw.githubusercontent.com/monitoringartist/kubernetes-zabbix/master/doc/kubernetes-zabbix-schema.png)

## Runnig Zabbix infrastructure on Kubernetes:

```
kubectl create -f zabbix-all-in-one-bare-metal.yaml
kubectl get svc,rc,po | grep zabbix
```

Zabbix/Grafana Kubernetes cluster on Google Container Engine (GKE):
[![ScreenShot](https://raw.githubusercontent.com/monitoringartist/kubernetes-zabbix/master/doc/kubernetes-zabbix-youtube.png)](https://www.youtube.com/watch?v=F2dBzuDy0Ns)

# Author

[Devops Monitoring zExpert](http://www.jangaraj.com 'DevOps / Docker / Kubernetes / Zabbix / Zenoss / Monitoring'), who loves monitoring
systems, which start with letter Z. Those are Zabbix and Zenoss.

Professional monitoring services:

[![Monitoring Artist](http://monitoringartist.com/img/github-monitoring-artist-logo.jpg)]
(http://www.monitoringartist.com 'DevOps / Docker / Kubernetes / Zabbix / Zenoss / Monitoring')

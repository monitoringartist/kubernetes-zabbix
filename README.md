# Zabbix on Kubernetes

If you like or use this project, please provide feedback to author - Star it ★.

**Overview of Monitoring Artist Dockerized monitoring ecosystem:**

- **[Zabbix XXL](https://hub.docker.com/r/monitoringartist/zabbix-3.0-xxl/)** - standard Zabbix 3.0 server/proxy/UI/snmpd/java gateway with additional XXL extensions
- **[Zabbix agent XXL](https://hub.docker.com/r/monitoringartist/zabbix-agent-xxl-limited/)** - Zabbix 3.0 agent with [Docker (Mesos/Chronos/Marathon) monitoring](https://github.com/monitoringartist/zabbix-docker-monitoring) and [systemd monitoring](https://github.com/monitoringartist/zabbix-systemd-monitoring)
- **[Zabbix templates](https://hub.docker.com/r/monitoringartist/zabbix-templates/)** - tiny (5MB) image for easy template deployment of selected Zabbix monitoring templates
- **[Zabbix extension - all templates](https://hub.docker.com/r/monitoringartist/zabbix-ext-all-templates/)** - storage image for Zabbix XXL with 200+ [community templates](https://github.com/monitoringartist/zabbix-community-repos)
- **[Kubernetized Zabbix](https://github.com/monitoringartist/kubernetes-zabbix)** - containerized Zabbix cluster based on Kubernetes
- **[Grafana XXL](https://hub.docker.com/r/monitoringartist/grafana-xxl/)** - dockerized Grafana with all community plugins
- **[Monitoring Analytics](https://hub.docker.com/r/monitoringartist/monitoring-analytics/)** - R statistical computing and graphics for monitoring from data scientists
- **[Docker killer](https://hub.docker.com/r/monitoringartist/docker-killer/)** - Docker image for Docker stress and Docker orchestration testing

Zabbix 3.0 on multinode Kubernetes cluster - architecture:

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

## Zabbix Kubernetes Service/Replication controller schema

![Zabbix 3.0 on Kubernetes schema](https://raw.githubusercontent.com/monitoringartist/kubernetes-zabbix/master/doc/kubernetes-zabbix-schema.png)

## Runnig Zabbix 3.0 infrastructure on Kubernetes:

```
kubectl create -f zabbix-all-in-one-bare-metal.yaml
kubectl get svc,rc,po | grep zabbix
```

Zabbix/Grafana Kubernetes cluster on Google Container Engine (GKE):
[![ScreenShot](https://raw.githubusercontent.com/monitoringartist/kubernetes-zabbix/master/doc/kubernetes-zabbix-youtube.png)](https://www.youtube.com/watch?v=F2dBzuDy0Ns)

# Author

[Devops Monitoring Expert](http://www.jangaraj.com 'DevOps / Docker / Kubernetes / AWS ECS / Zabbix / Zenoss / Terraform / Monitoring'),
who loves monitoring systems, which start with letter Z. Those are Zabbix and Zenoss.

Professional devops / monitoring services:

[![Monitoring Artist](http://monitoringartist.com/img/github-monitoring-artist-logo.jpg)](http://www.monitoringartist.com 'DevOps / Docker / Kubernetes / AWS ECS / Zabbix / Zenoss / Terraform / Monitoring')

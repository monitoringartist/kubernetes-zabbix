[<img src="https://monitoringartist.github.io/managed-by-monitoringartist.png" alt="Managed by Monitoring Artist: DevOps / Docker / Kubernetes / AWS ECS / Zabbix / Zenoss / Terraform / Monitoring" align="right"/>](http://www.monitoringartist.com 'DevOps / Docker / Kubernetes / AWS ECS / Zabbix / Zenoss / Terraform / Monitoring')

# Zabbix on Kubernetes

If you like or use this project, please provide feedback to the author - Star it ★.

----

**Overview of Monitoring Artist (dockerized) monitoring ecosystem:**

- **[Dockbix XXL](https://hub.docker.com/r/monitoringartist/dockbix-xxl/)** - Zabbix server/proxy/UI/snmpd/java gateway with additional extensions
- **[Dockbix agent XXL](https://hub.docker.com/r/monitoringartist/dockbix-agent-xxl-limited/)** - Zabbix agent with [Docker (Kubernetes/Mesos/Chronos/Marathon) monitoring](https://github.com/monitoringartist/zabbix-docker-monitoring) module
- **[Zabbix templates](https://hub.docker.com/r/monitoringartist/zabbix-templates/)** - tiny Docker image for simple template deployment of selected Zabbix monitoring templates
- **[Zabbix extension - all templates](https://hub.docker.com/r/monitoringartist/zabbix-ext-all-templates/)** - storage image for Dockbix XXL with 200+ [community templates](https://github.com/monitoringartist/zabbix-community-repos)
- **[Kubernetized Zabbix](https://github.com/monitoringartist/kubernetes-zabbix)** - containerized Zabbix cluster based on Kubernetes
- **[Grafana XXL](https://hub.docker.com/r/monitoringartist/grafana-xxl/)** - dockerized Grafana with all community plugins
- **[Grafana dashboards](https://grafana.net/monitoringartist)** - Grafana dashboard collection for [AWS](https://github.com/monitoringartist/grafana-aws-cloudwatch-dashboards) and [Zabbix](https://github.com/monitoringartist/grafana-zabbix-dashboards)
- **[Monitoring Analytics](https://hub.docker.com/r/monitoringartist/monitoring-analytics/)** - graphic analytic tool for Zabbix data from data scientists
- **[Docker killer](https://hub.docker.com/r/monitoringartist/docker-killer/)** - Docker image for Docker stress and Docker orchestration testing

----

Zabbix on multinode Kubernetes cluster - architecture:

- zabbix-web: service + replication controller with 1+ replicas
- zabbix-server: service + replication controller with 1 replica
- zabbix-db: service + replication controller with 1 replica

It's the only concept! Zabbix-db pod uses ephemeral in memory storage! Customize
yaml files for your environment.

Please donate to the author, so he can continue to publish other awesome project
for free:

[![Paypal donate button](http://jangaraj.com/img/github-donate-button02.png)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=8LB6J222WRUZ4)

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

![Zabbix on Kubernetes schema](https://raw.githubusercontent.com/monitoringartist/kubernetes-zabbix/master/doc/kubernetes-zabbix-schema.png)

## Runnig Zabbix infrastructure on Kubernetes:

```
kubectl create -f zabbix-all-in-one-bare-metal.yaml
kubectl get svc,rc,po | grep zabbix
```

Zabbix/Grafana Kubernetes cluster on Google Container Engine (GKE):
[![ScreenShot](https://raw.githubusercontent.com/monitoringartist/kubernetes-zabbix/master/doc/kubernetes-zabbix-youtube.png)](https://www.youtube.com/watch?v=F2dBzuDy0Ns)

# Used Docker images

Please visit projects of used Docker images for more details (configuration, etc.):

- [Zabbix XXL - Zabbix server](https://github.com/monitoringartist/zabbix-xxl)
- [Dockbix - Dockerized Zabbix agent](https://github.com/monitoringartist/dockbix-agent-xxl)

# Author

[Devops Monitoring Expert](http://www.jangaraj.com 'DevOps / Docker / Kubernetes / AWS ECS / Google GCP / Zabbix / Zenoss / Terraform / Monitoring'),
who loves monitoring systems and cutting/bleeding edge technologies: Docker,
Kubernetes, ECS, AWS, Google GCP, Terraform, Lambda, Zabbix, Grafana, Elasticsearch,
Kibana, Prometheus, Sysdig, ...

Summary:
* 2000+ [GitHub](https://github.com/monitoringartist/) stars
* 10 000+ [Grafana dashboard](https://grafana.net/monitoringartist) downloads
* 1 000 000+ [Docker image](https://hub.docker.com/u/monitoringartist/) pulls

Professional devops / monitoring / consulting services:

[![Monitoring Artist](http://monitoringartist.com/img/github-monitoring-artist-logo.jpg)](http://www.monitoringartist.com 'DevOps / Docker / Kubernetes / AWS ECS / Google GCP / Zabbix / Zenoss / Terraform / Monitoring')

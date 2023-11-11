# Grafana Kubernetes Geomap Dashboard

**Understand your infrastructure geographic topology at glance.**

Various cloud providers codes for their regions (e. g. AWS' `us-east-1`) and those map to a location.

There are 2 artifacts of this project which can be used for different purposes:
 * [Gazetteer File](#gazetteer-file) - contains mapping of the cloud region code to latitude and longitude
 * [Grafana Kubernetes Dashboard](#grafana-dashboard) - leverages the gazetteer file and metrics provided by [kube-state-metrics](https://github.com/kubernetes/kube-state-metrics) and displays Kubernetes resources in a Grafana Geomap Dashboard.

## [Grafana Dashboard](https://grafana.com/grafana/dashboards/19963)
![Grafana Dashboard](/img/node-dashboard.png)

 * https://grafana.com/grafana/dashboards/19963
 * https://raw.githubusercontent.com/dohnto/k8s-geomap-dashboard/main/dashboards/dashboard.json


## Gazetteer File

 * https://raw.githubusercontent.com/dohnto/k8s-geomap-dashboard/main/gazetteer/cloud-regions.json

## What Cloud Providers are Covered?
 * AWS

## What Metrics Contain Cloud Regions?
 * [kube-state-metrics](https://github.com/kubernetes/kube-state-metrics):
    * `kube_node_labels{label_topology_kubernetes_io_region}`
    * `kube_persistentvolume_labels{label_topology_kubernetes_io_region}`

# monitoring


## coreos/prometheus-operator

```bash
$ helm install coreos/prometheus-operator --name prometheus-operator --namespace monitoring --set rbacEnable=false,exporter-kube-state.rbacEnable=false,alertmanager.rbacEnable=false,prometheus.rbacEnable=false
NAME:   prometheus-operator
LAST DEPLOYED: Fri Apr 13 16:43:25 2018
NAMESPACE: monitoring
STATUS: DEPLOYED

RESOURCES:
==> v1/ConfigMap
NAME                 DATA  AGE
prometheus-operator  1     2m

==> v1beta1/Deployment
NAME                 DESIRED  CURRENT  UP-TO-DATE  AVAILABLE  AGE
prometheus-operator  1        1        1           1          2m

==> v1/Pod(related)
NAME                                  READY  STATUS   RESTARTS  AGE
prometheus-operator-788765dc94-t5jnv  1/1    Running  0         2m


NOTES:
The Prometheus Operator has been installed. Check its status by running:
  kubectl --namespace monitoring get pods -l "app=prometheus-operator,release=prometheus-operator"

Visit https://github.com/coreos/prometheus-operator for instructions on how
to create & configure Alertmanager and Prometheus instances using the Operator.
```



## coreos/kube-prometheus

```bash
helm install coreos/kube-prometheus --name kube-prometheus --set global.rbacEnable=false --namespace monitoring
NAME:   kube-prometheus
LAST DEPLOYED: Fri Apr 13 16:52:25 2018
NAMESPACE: monitoring
STATUS: DEPLOYED

RESOURCES:
==> v1/ConfigMap
NAME                                              DATA  AGE
kube-prometheus-alertmanager                      1     6s
kube-prometheus-exporter-kube-controller-manager  1     6s
kube-prometheus-exporter-kube-etcd                1     6s
kube-prometheus-exporter-kube-scheduler           1     6s
kube-prometheus-exporter-kube-state               1     6s
kube-prometheus-exporter-kubelets                 1     6s
kube-prometheus-exporter-kubernetes               1     6s
kube-prometheus-exporter-node                     1     6s
kube-prometheus-grafana                           10    6s
kube-prometheus-prometheus                        1     6s
kube-prometheus                                   1     6s

==> v1beta1/DaemonSet
NAME                           DESIRED  CURRENT  READY  UP-TO-DATE  AVAILABLE  NODE SELECTOR  AGE
kube-prometheus-exporter-node  1        1        0      1           0          <none>         5s

==> v1beta1/Deployment
NAME                                 DESIRED  CURRENT  UP-TO-DATE  AVAILABLE  AGE
kube-prometheus-exporter-kube-state  1        1        1           0          5s
kube-prometheus-grafana              1        1        1           0          5s

==> v1/Pod(related)
NAME                                                  READY  STATUS             RESTARTS  AGE
kube-prometheus-exporter-node-wtd86                   0/1    ContainerCreating  0         5s
kube-prometheus-exporter-kube-state-7f857cbbd7-7m9gf  0/2    ContainerCreating  0         5s
kube-prometheus-grafana-6cd54fd88f-xr82b              0/2    ContainerCreating  0         5s

==> v1/Secret
NAME                          TYPE    DATA  AGE
alertmanager-kube-prometheus  Opaque  1     6s
kube-prometheus-grafana       Opaque  2     6s

==> v1/Service
NAME                                              TYPE       CLUSTER-IP    EXTERNAL-IP  PORT(S)              AGE
kube-prometheus-alertmanager                      ClusterIP  10.0.222.236  <none>       9093/TCP             6s
kube-prometheus-exporter-kube-controller-manager  ClusterIP  None          <none>       10252/TCP            6s
kube-prometheus-exporter-kube-dns                 ClusterIP  None          <none>       10054/TCP,10055/TCP  6s
kube-prometheus-exporter-kube-etcd                ClusterIP  None          <none>       4001/TCP             6s
kube-prometheus-exporter-kube-scheduler           ClusterIP  None          <none>       10251/TCP            6s
kube-prometheus-exporter-kube-state               ClusterIP  10.0.62.59    <none>       80/TCP               6s
kube-prometheus-exporter-node                     ClusterIP  10.0.63.113   <none>       9100/TCP             6s
kube-prometheus-grafana                           ClusterIP  10.0.150.238  <none>       80/TCP               6s
kube-prometheus-prometheus                        ClusterIP  10.0.255.119  <none>       9090/TCP             6s

==> v1/Alertmanager
NAME             AGE
kube-prometheus  5s

==> v1/Prometheus
kube-prometheus  5s

==> v1/ServiceMonitor
kube-prometheus-alertmanager                      5s
kube-prometheus-exporter-kube-controller-manager  5s
kube-prometheus-exporter-kube-dns                 5s
kube-prometheus-exporter-kube-etcd                5s
kube-prometheus-exporter-kube-scheduler           5s
kube-prometheus-exporter-kube-state               5s
kube-prometheus-exporter-kubelets                 5s
kube-prometheus-exporter-kubernetes               5s
kube-prometheus-exporter-node                     5s
kube-prometheus-grafana                           5s
kube-prometheus-prometheus                        5s

```



# references

- https://itnext.io/kubernetes-monitoring-with-prometheus-in-15-minutes-8e54d1de2e13
- https://grafana.com/dashboards/315
- https://devopscube.com/setup-prometheus-monitoring-on-kubernetes/

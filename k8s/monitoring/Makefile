apply:
	kubectl apply -f .

%-namespace:
	kubectl config set-context `kubectl config current-context` --namespace=$*

install:
	 helm repo add coreos https://s3-eu-west-1.amazonaws.com/coreos-charts/stable/
	 helm install coreos/prometheus-operator --name prometheus-operator --namespace monitoring --set rbacEnable=false,exporter-kube-state.rbacEnable=false,alertmanager.rbacEnable=false,prometheus.rbacEnable=false
	 helm install coreos/kube-prometheus --name kube-prometheus --set global.rbacEnable=false --namespace monitoring

prometheus-dashboard:  ## http://localhost:9090
	kubectl port-forward -n monitoring prometheus-kube-prometheus-0 9090

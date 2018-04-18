# Referência: https://medium.com/@timfpark/efk-logging-on-kubernetes-on-azure-4c54402459c4

namespace.monitoring:
	kubectl config set-context `kubectl config current-context` --namespace=monitoring

create:
	kubectl create -f es-statefulset.yaml
	kubectl create -f es-service.yaml
	kubectl create -f fluentd-es-configmap.yaml
	kubectl create -f fluentd-es-ds.yaml
	kubectl create -f kibana-deployment.yaml
	kubectl create -f kibana-service.yaml

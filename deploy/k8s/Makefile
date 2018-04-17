namespace.fe:
	kubectl config set-context `kubectl config current-context` --namespace=fe

namespace.monitoring:
	kubectl config set-context `kubectl config current-context` --namespace=monitoring

apply:
	kubectl apply --recursive -f .

browser.kibana:
	kubectl port-forward -n monitoring kibana-59f5dddb76-gb2bb 9443:443

namespaces:
	$(MAKE) -C 0-namespaces

secrets:
	$(MAKE) -C ~/workspace/notes/2018/Projects/fe/k8s/1-secrets/

services:
	$(MAKE) -C 2-k8s

namespace.ms:
	kubectl config set-context `kubectl config current-context` --namespace=ms

image:
	kubectl set image deployment/fe-server fe-server=fernandoe/fe-server:feature-add-endereco

#
#apply:
#	kubectl apply --recursive -f .
#
#browser.kibana:
#	kubectl port-forward -n monitoring kibana-59f5dddb76-gb2bb 9443:443

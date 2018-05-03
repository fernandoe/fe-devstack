namespaces:
	$(MAKE) -C 0-namespaces

namespaces.ms:
	kubectl config set-context `kubectl config current-context` --namespace=ms

secrets:
	$(MAKE) -C ~/workspace/notes/2018/Projects/fe/k8s/1-secrets/

helms:
	$(MAKE) -C 1-helm

services:
	$(MAKE) -C 2-k8s

deploy.server:
	kubectl set image deployment/fe-server fe-server=fernandoe/fe-server:feature-add-endereco

deploy.endereco:
	kubectl set image deployment/fe-endereco fe-endereco=fernandoe/fe-endereco-server:acesso-ao-service-de-conta

deploy.task:
	kubectl set image deployment/fe-task fe-task=fernandoe/fe-task-server:0.0.2

list.pods:
	kubectl get pods -n ms -o jsonpath="{..image}" |tr -s '[[:space:]]' '\n' |sort |uniq -c

#%-shell:
#	kubectl exec -it `kubectl get pod -l 'service=$*' -o jsonpath='{.items[0].metadata.name}'` -- sh
#kubectl exec -it fe-conta-709893531-rwdw7 -- sh
#apply:
#	kubectl apply --recursive -f .
#
#browser.kibana:
#	kubectl port-forward -n monitoring kibana-59f5dddb76-gb2bb 9443:443

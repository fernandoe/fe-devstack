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

deploy.coaching:
	kubectl set image deployment/fe-coaching fe-coaching=fernandoe/fe-coaching-server:release-0.0.2

deploy.pessoa:
	kubectl set image deployment/fe-pessoa fe-pessoa=fernandoe/fe-pessoa-server:release-0.0.1

list.pods:
	kubectl get pods -n ms -o jsonpath="{..image}" |tr -s '[[:space:]]' '\n' |sort |uniq -c

%-shell:
	kubectl exec -it `kubectl get pod -l 'service=$*' -o jsonpath='{.items[0].metadata.name}'` -- sh

%-reset_db:
	kubectl exec -it `kubectl get pod -l 'service=$*' -o jsonpath='{.items[0].metadata.name}'` -- python manage.py reset_db --noinput

%-migrate:
	kubectl exec -it `kubectl get pod -l 'service=$*' -o jsonpath='{.items[0].metadata.name}'` -- python manage.py migrate

%-createsuperuser:
	kubectl exec -it `kubectl get pod -l 'service=$*' -o jsonpath='{.items[0].metadata.name}'` -- python manage.py createsuperuser

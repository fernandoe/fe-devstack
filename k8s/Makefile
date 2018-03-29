get.pods:
	kubectl get pods -o wide

get.deployments:
	kubectl get deployments

create.deploys:
	kubectl create -f 01-deploy-conta.yml
	kubectl create -f 02-deploy-pessoa.yml
	kubectl create -f 03-deploy-server.yml

create.services:
	kubectl create -f 04-service-conta.yml
	kubectl create -f 05-service-pessoa.yml
	kubectl create -f 06-service-server.yml

apply.deploy.all:
	kubectl apply -f 01-deploy-conta.yml
	kubectl apply -f 02-deploy-pessoa.yml
	kubectl apply -f 03-deploy-server.yml

delete.deployments.fe-conta:
	kubectl delete deployments fe-conta

%-shell:
	kubectl exec -it `kubectl get pod -l 'app=deploy-$*' -o jsonpath='{.items[0].metadata.name}'` -- sh

deploy.server:
	kubectl apply -f 03-deploy-server.yml

deploy.watch.server:
	reset; while sleep 1; do curl -s -o /dev/null -w "%{http_code}\n" http://52.168.175.211; done

deploy.watch.pods:
	reset; kubectl get pods --watch

deploy.watch.services:
	reset; kubectl get services --watch

deploy.watch.deployments:
	reset; kubectl get deployments --watch

kubernetes-dashboard:
	az aks browse --resource-group rg-fe-microservices --name c-fe-microservices

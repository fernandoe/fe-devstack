get.pods:
	kubectl get pods -o wide

get.deployments:
	kubectl get deployments

create.deploys:
	kubectl create -f 01-deploy-conta.yml
	kubectl create -f 02-deploy-pessoa.yml
	kubectl create -f 03-deploy-server.yml

create.services:
	kubectl create -f 03-service-conta.yml
	kubectl create -f 04-service-pessoa.yml

apply.deploys:
	kubectl apply -f 01-deploy-conta.yml
	kubectl apply -f 01-deploy-pessoa.yml

delete.deployments.fe-conta:
	kubectl delete deployments fe-conta

#%-shell:
#	kubectl exec -it $(kubectl get pod -l 'app=deploy-conta' -o jsonpath='{.items[0].metadata.name}') -- sh

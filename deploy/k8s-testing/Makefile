install.elasticsearch:
	helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
	helm install incubator/elasticsearch --namespace monitoring --name elasticsearch

install.kibana:
	helm install stable/kibana --namespace monitoring --name kibana

#export POD_NAME=$(kubectl get pods --namespace monitoring -l "app=elasticsearch,component=client,release=elasticsearch" -o jsonpath="{.items[0].metadata.name}")
#echo "Visit http://127.0.0.1:9200 to use Elasticsearch"
#kubectl port-forward --namespace monitoring $POD_NAME 9200:9200






#namespace.fe:
#	kubectl config set-context `kubectl config current-context` --namespace=fe
#
#get.pods:
#	kubectl get pods -o wide
#
#get.deployments:
#	kubectl get deployments
#
#create.deploys:
#	kubectl create -f 01-deploy-conta.yml
#	kubectl create -f 01-deploy-pessoa.yml
#	kubectl create -f 01-deploy-endereco.yml
#	kubectl create -f 01-deploy-pagamento.yml
#	kubectl create -f 01-deploy-server.yml
#
#create.services:
#	kubectl create -f 02-service-conta.yml
#	kubectl create -f 02-service-pessoa.yml
#	kubectl create -f 02-service-endereco.yml
#	kubectl create -f 02-service-pagamento.yml
#	kubectl create -f 02-service-server.yml
#
#apply.deploy.all:
#	kubectl apply -f 01-deploy-conta.yml
#	kubectl apply -f 01-deploy-pessoa.yml
#	kubectl apply -f 01-deploy-endereco.yml
#	kubectl apply -f 01-deploy-pagamento.yml
#	kubectl apply -f 01-deploy-server.yml
#
#delete.deployments.fe-conta:
#	kubectl delete deployments fe-conta
#
#deploy.server:
#	kubectl apply -f 03-deploy-server.yml
#
#deploy.watch.server:
#	reset; while sleep 1; do curl -s -o /dev/null -w "%{http_code}\n" http://52.168.175.211; done
#
#deploy.watch.pods:
#	reset; kubectl get pods --watch
#
#deploy.watch.services:
#	reset; kubectl get services --watch
#
#deploy.watch.deployments:
#	reset; kubectl get deployments --watch
#
#kubernetes-dashboard:
#	az aks browse --resource-group rg-microservices --name c-microservices
#
#%-shell:
#	kubectl exec -it `kubectl get pod -l 'service=$*' -o jsonpath='{.items[0].metadata.name}'` -- sh

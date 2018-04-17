helm.init:
	helm init

install.cert-manager:
	helm install \
		--name cert-manager \
		--namespace kube-system \
		--set rbac.create=false \
		stable/cert-manager

install.nginx-ingress:
	helm install stable/nginx-ingress --name nginx-ingress -f nginx-ingress/nginx-ingress.yml

install.elasticsearch:
	helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
	helm install incubator/elasticsearch --namespace monitoring --name elasticsearch

install.kibana:
	helm install stable/kibana --namespace monitoring --name kibana

delete.nginx-ingress:
	helm del --purge nginx-ingress

#export POD_NAME=$(kubectl get pods --namespace monitoring -l "app=elasticsearch,component=client,release=elasticsearch" -o jsonpath="{.items[0].metadata.name}")
#echo "Visit http://127.0.0.1:9200 to use Elasticsearch"
#kubectl port-forward --namespace monitoring $POD_NAME 9200:9200


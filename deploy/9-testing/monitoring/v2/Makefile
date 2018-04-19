namespace.monitoring:
	kubectl config set-context `kubectl config current-context` --namespace=monitoring

install.elasticsearch:
	helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
	helm install incubator/elasticsearch --namespace monitoring --name elasticsearch -f elasticsearch/elasticsearch.yml

#export POD_NAME=$(kubectl get pods --namespace monitoring -l "app=elasticsearch,component=client,release=elasticsearch" -o jsonpath="{.items[0].metadata.name}")
#echo "Visit http://127.0.0.1:9200 to use Elasticsearch"
#kubectl port-forward --namespace monitoring $POD_NAME 9200:9200

install.kibana:
	helm install stable/kibana --namespace monitoring --name kibana -f kibana/kibana.yml

#kubectl --namespace=monitoring get pods -l "app=kibana"

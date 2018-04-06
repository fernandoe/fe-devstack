install.nginx-ingress.ms:
	helm install stable/nginx-ingress --name ms

install.ingress-ms:
	kubectl create -f ingress-ms.yml

install: install.nginx-ingress.ms install.ingress-ms

# UTILS
destroy:
	helm delete ms
	kubectl delete -f ingress-ms.yml

apply.ingress-ms:
	kubectl apply -f ingress-ms.yml

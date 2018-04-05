install:
	helm install \
		--name cert-manager \
		--namespace kube-system \
		--set rbac.create=false \
		stable/cert-manager






















helm.delete.cert-manager:
	helm del --purge cert-manager

helm.ls.cert-manager:
	helm ls --all cert-manager

issuer.create:
	kubectl create -f acme-staging-issuer.yml

issuers.get:
	kubectl get issuers

cert.create.conta:
	kubectl create -f conta-staging-cert.yml

cert.get:
	kubectl get certificates

describe.cert.conta:
	kubectl describe certificate conta-ms-fernandoe-com

dig.conta:
	dig conta.ms.fernandoe.com

install.cert-manager:
	helm install \
		--name cert-manager \
		--namespace kube-system \
		--set rbac.create=false \
		stable/cert-manager

create.issuer:
	kubectl create -f acme-production-issuer.yml

create.certificate.conta:
	kubectl create -f certificate-conta.yml

create.certificate.conta.verify:
	kubectl describe certificate conta-ms-fernandoe-com

create: install.cert-manager create.issuer create.certificate.conta

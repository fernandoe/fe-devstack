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

create.certificate.endereco:
	kubectl create -f certificate-endereco.yml

create.certificate.pagamento:
	kubectl create -f certificate-pagamento.yml

create.certificate.pessoa:
	kubectl create -f certificate-pessoa.yml

create.certificate.conta.verify:
	kubectl describe certificate conta-ms-fernandoe-com

create.certificate.endereco.verify:
	kubectl describe certificate endereco-ms-fernandoe-com

create.certificate.pagamento.verify:
	kubectl describe certificate pagamento-ms-fernandoe-com

create.certificate.pessoa.verify:
	kubectl describe certificate pessoa-ms-fernandoe-com

create: install.cert-manager create.issuer create.certificate.conta

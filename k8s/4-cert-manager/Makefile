install.cert-manager:
	helm install \
		--name cert-manager \
		--namespace kube-system \
		--set rbac.create=false \
		stable/cert-manager

create.issuer.letsencrypt-staging:
	kubectl create -f acme-staging-issuer.yml

create.certificate.staging-conta:
	kubectl create -f staging-conta-cert.yml

create.certificate.staging-conta.verify:
	kubectl describe certificate conta-ms-fernandoe-com

create: install.cert-manager create.issuer.letsencrypt-staging create.certificate.staging-conta

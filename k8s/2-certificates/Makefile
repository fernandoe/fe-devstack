create.staging.issuer:
	kubectl create -f ./issuer-letsencrypt-staging.yml

create.staging.certificates:
	kubectl create -f ./certificates-staging.yml

create: create.staging.issuer create.staging.certificates

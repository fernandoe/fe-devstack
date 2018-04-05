create.ca-key:
	openssl genrsa -out ca.key 2048

create.ca-crt:
	openssl req -x509 -new -nodes -key ca.key -subj "/CN=fernandoe.com" -days 3650 -out ca.crt

create.ca: create.ca-key create.ca-crt

create.secret:
	kubectl create secret tls ca-key-pair --cert=./ca.crt --key=./ca.key --namespace default

create.issuer:
	kubectl create -f issuer.yml

create.certificate.conta:
	kubectl create -f certificate.yml

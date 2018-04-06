create.conta:
	kubectl create -f service-conta.yml

create.endereco:
	kubectl create -f service-endereco.yml

create.pagamento:
	kubectl create -f service-pagamento.yml

create.pessoa:
	kubectl create -f service-pessoa.yml

create.server:
	kubectl create -f service-server.yml

create.backend: create.conta create.endereco create.pagamento create.pessoa

apply.conta:
	kubectl apply -f service-conta.yml

apply.endereco:
	kubectl apply -f service-endereco.yml

apply.pagamento:
	kubectl apply -f service-pagamento.yml

apply.pessoa:
	kubectl apply -f service-pessoa.yml

apply.server:
	kubectl apply -f service-server.yml

apply.all: apply.conta apply.endereco apply.pagamento apply.pessoa apply.server

create-%:
	kubectl create -f service-$*.yml

apply-%:
	kubectl apply -f service-$*.yml

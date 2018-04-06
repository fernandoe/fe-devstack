create:
	kubectl create -f deploy-conta.yml
	kubectl create -f deploy-pessoa.yml
	kubectl create -f deploy-endereco.yml
	kubectl create -f deploy-pagamento.yml
	kubectl create -f deploy-server.yml
	kubectl create -f deploy-sms.yml

create-%:
	kubectl create -f deploy-$*.yml

apply-%:
	kubectl apply -f deploy-$*.yml


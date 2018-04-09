DEVSTACK_WORKSPACE ?= $(shell pwd)/..

OS := $(shell uname)

COMPOSE_PROJECT_NAME=fe

export DEVSTACK_WORKSPACE
export COMPOSE_PROJECT_NAME

restart:
	docker-compose restart conta pessoa endereco pagamento web

logs:
	docker-compose logs -f

db.migrate:
	docker exec -i fe.devstack.conta python manage.py migrate
	docker exec -i fe.devstack.pessoa python manage.py migrate
	docker exec -i fe.devstack.pagamento python manage.py migrate
	docker exec -i fe.devstack.endereco python manage.py migrate

db.createsuperuser.conta:
	docker-compose run --rm conta python manage.py createsuperuser

compose.createsuperuser.pessoa:
	docker-compose run --rm pessoa python manage.py createsuperuser

git.clone: ## Clona todos os repositórios do projeto
	./scripts/repo.sh clone

git.status: ## Mostra o status dos repositórios do projeto
	./scripts/repo.sh status

git.pull: ## Atualiza os branchs dos repositórios do projeto
	./scripts/repo.sh pull

dev.build: ## Realiza o build dos projetos
	./scripts/build.sh

dev.compose.up: ## Inicia a aplicação
	docker-compose up

dev.compose.up.d: ## Inicia a aplicação
	docker-compose up -d

dev.compose.up.web: ## Inicia a aplicação web
	docker-compose up web

dev.compose.stop: ## Para a aplicação
	docker-compose stop

dev.compose.rm: ## Remove os containers da aplicação
	docker-compose rm

dev.compose.ps: ## Lista os containers da aplicação
	docker-compose ps

dev.db.create-databases: ## Cria os bancos de dados
	docker exec -i fe.devstack.mysql mysql -uroot -ppassword -e "create database fe_conta";
	docker exec -i fe.devstack.mysql mysql -uroot -ppassword -e "create database fe_pessoa";
	docker exec -i fe.devstack.mysql mysql -uroot -ppassword -e "create database fe_pagamento";
	docker exec -i fe.devstack.mysql mysql -uroot -ppassword -e "create database fe_endereco";
	docker exec -i fe.devstack.mysql mysql -uroot -ppassword -e "create database fe_sms";

dev.db.migrate: ## Executa as migrações do Django
	docker exec -i fe.devstack.conta python manage.py migrate
	docker exec -i fe.devstack.pessoa python manage.py migrate
	docker exec -i fe.devstack.pagamento python manage.py migrate
	docker exec -i fe.devstack.endereco python manage.py migrate
	docker exec -i fe.devstack.sms python manage.py migrate

dev.db.dump: ## Realiza os backups dos bancos utilizados
	./scripts/dump-db.sh fe_conta
	./scripts/dump-db.sh fe_pessoa

dev.db.load: ## Realiza os backups dos bancos utilizados
	./scripts/load-db.sh fe_conta
	./scripts/load-db.sh fe_pessoa

dev.web.install: ## Instala as dependências do node
	docker-compose run --rm web npm install

%-shell: 
	docker exec -it fe.devstack.$* env TERM=$(TERM) sh

%-restart:
	docker-compose restart $*

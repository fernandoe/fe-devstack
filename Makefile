DEVSTACK_WORKSPACE ?= $(shell pwd)/..

OS := $(shell uname)

COMPOSE_PROJECT_NAME=fe

export DEVSTACK_WORKSPACE
export COMPOSE_PROJECT_NAME

dev.clone: ## Clona todos os repositórios
	./repo.sh clone

dev.build: ## Realiza o build dos projetos
	./scripts/build.sh

dev.compose.up: ## Inicia a aplicação
	docker-compose up

dev.compose.stop: ## Para a aplicação
	docker-compose stop

dev.compose.rm: ## Remove os containers da aplicação
	docker-compose rm

dev.compose.ps: ## Lista os containers da aplicação
	docker-compose ps

dev.compose.logs: ## Lista os containers da aplicação
	docker-compose logs -f

dev.compose.createsuperuser.conta: ## Cria o usuário principal dentro da aplicação de conta
	docker-compose run --rm conta python manage.py createsuperuser

dev.compose.createsuperuser.pessoa: ## Cria o usuário principal dentro da aplicação de conta
	docker-compose run --rm pessoa python manage.py createsuperuser

dev.db.create-databases: ## Cria os bancos de dados
	docker exec -i fe.devstack.mysql mysql -uroot -ppassword -e "create database fe_conta";
	docker exec -i fe.devstack.mysql mysql -uroot -ppassword -e "create database fe_pessoa";

dev.db.migrate: ## Executa as migrações do Django
	docker exec -i fe.devstack.conta python manage.py migrate
	docker exec -i fe.devstack.pessoa python manage.py migrate

dev.db.dump: ## Realiza os backups dos bancos utilizados
	./scripts/dump-db.sh fe_conta
	./scripts/dump-db.sh fe_pessoa

dev.web.install: ## Instala as dependências do node
	docker-compose run --rm web npm install

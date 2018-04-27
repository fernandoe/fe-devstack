# Novos Microserviços

## Passos

1. Criar repositório no https://github.com
1. Criar o repositório no Docker Hub `https://hub.docker.com`
1. Adicionar repositório ao arquivo `scripts/repo.sh`
1. Ativar o repositório no Travis `https://travis-ci.org`
1. Ativar o repositório no `https://requires.io`
1. Ativar o repositório no `https://coveralls.io`
1. Executar `make git.clone`
1. Adicionar código mínimo para codar o serviço de fazer o deploy com o travis.
1. Adicionar configuração para o projeto no `docker-compose.yml`
1. Configuração do settings do projeto do django.
1. Criar banco de dados local com `make database.{PROJETO}.create`
1. Migrar os dados com `make {PROJETO}-migrate`
1. Adicionar os secredos do projeto
1. Adicionar os recursos do projeto no kubernetes
    - `deploy/2-k8s/2-ingress/ingress-ms.yml`
    - `deploy/2-k8s/3-services`

# How to integrate new microserviços

## Local Steps

1. Create the new repository on https://github.com
1. Create the repository on Docker Hub `https://hub.docker.com`
1. Add the created github repository to the file `scripts/repo.sh`
1. Enable the github repository on Travis `https://travis-ci.org`
1. Enable the github repository on Requires `https://requires.io`
1. Enable the repository on Coveralls `https://coveralls.io`
1. Run `make git.clone`
1. Create the virtualenv with `mkvirtualenv ${PROJECT_NAME} --python=python3`
1. Add a minimum running code to deploy it using the travis.
1. Add the project configuration on the devstack docker-compose file `docker-compose.yml`
1. Configure the project settings (`server.settings.docker` and `server.settings.test`)
1. Run the services with `make up`
1. Create the local database with: `make database.{PROJETO}.create` 
1. Execute the project migrations with: `make {PROJETO}-migrate` 



## Kubernetes Steps
 
1. Deploy secrets with: `make secrets`
1. Add the project configurations to the kubernetes files
    - `deploy/2-k8s/2-ingress/ingress-ms.yml`
    - `deploy/2-k8s/3-services`
1. Deploy with: `make services`

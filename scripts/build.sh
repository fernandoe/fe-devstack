#!/usr/bin/env bash

echo "worksparce: $DEVSTACK_WORKSPACE"

projects=(
    "fe-coaching-server"
    "fe-conta-server"
    "fe-pessoa-server"
    "fe-endereco-server"
    "fe-pagamento-server"
    "fe-sms-server"
    "fe-task-server"
)

for p in ${projects[*]}
do
    echo "  -> Projeto: ${p}"
    cd $DEVSTACK_WORKSPACE; cd ${p}; make build
done

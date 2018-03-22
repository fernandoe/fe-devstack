#!/usr/bin/env bash

echo "worksparce: $DEVSTACK_WORKSPACE"

projects=(
    "fe-conta-server"
    "fe-pessoa-server"
)

for p in ${projects[*]}
do
    echo "  -> Projeto: ${p}"
    cd $DEVSTACK_WORKSPACE; cd ${p}; make compose-migrate
done

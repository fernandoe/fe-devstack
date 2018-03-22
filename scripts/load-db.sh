#!/usr/bin/env bash

set -e
set -o pipefail

if [ -z "$1" ]
then
    echo "You must supply a database name!"
    exit 1
fi

echo "Loading the $1 database..."
docker exec -i fe.devstack.mysql mysql -uroot -ppassword $1 < databases/$1.sql
echo "Finished loading the $1 database!"

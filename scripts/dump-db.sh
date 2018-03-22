#!/usr/bin/env bash

if [ -z "$1" ]
then
    echo "You must supply a database name!"
    exit 1
fi

echo "Dumping the $1 database..."
docker exec -i fe.devstack.mysql mysqldump -uroot -ppassword --add-drop-database --skip-add-drop-table -B $1 > databases/$1.sql
echo "Finished dumping the $1 database!"

#!/bin/bash

[ $# -ne 2 ] && { echo "Usage: $0 <database_password> <domain>"; exit 1; }

sed -i "s/changeme/$1/g" docker-compose.yml
sed -i "s/domain.temp/$2/g" docker-compose.yml
sed -i "s/domain.temp/$2/g" nginx/conf.d/nginx.conf

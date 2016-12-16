#!/bin/bash
set -e

npm install phenomic

if [ ! -f /srv/package.json ] then
./node_modules/.bin/phenomic setup
fi

npm install

exec "$@"

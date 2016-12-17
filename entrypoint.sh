#!/bin/bash
set -e

pwd

if ! grep -q "phenomic start" /srv/package.json
then
./node_modules/.bin/phenomic setup
fi

npm install

exec "$@"

#!/bin/bash
set -e

if grep -q "phenomic start" package.json
then
./node_modules/.bin/phenomic setup
fi

npm install

exec "$@"

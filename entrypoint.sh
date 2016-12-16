#!/bin/bash
set -e

if grep -F "phenomic start" package.json 
then
./node_modules/.bin/phenomic setup
fi

npm install

exec "$@"

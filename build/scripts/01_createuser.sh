#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "postgres" <<-EOSQL
  CREATE ROLE dre SUPERUSER CREATEDB CREATEROLE INHERIT LOGIN PASSWORD 'dre';
EOSQL
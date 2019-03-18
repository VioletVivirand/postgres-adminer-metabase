#!/bin/bash
set -e

set PGPASSWORD=$POSTGRES_PASSWORD && createdb -U $POSTGRES_USER books
set PGPASSWORD=$POSTGRES_PASSWORD && psql -U $POSTGRES_USER -f /sql_vqs3_files/books_postgresql.sql books

# Equal to the command below, the only differnece is:
# The hostname can't be resolve when the database is initializing
#psql "postgresql://$POSTGRES_USER:$POSTGRES_PASSWORD@`hostname`" -f /sql_vqs3_viles/books_postgresql.sql books

# Another way is: copy the sql file and paste in the psql command
# Ref: https://hub.docker.com/_/postgres/ "How to extend this image"
#psql  --username "$POSTGRES_USER" --dbname "books" <<-EOSQL
#<Put SQL statement here>
#EOSQL

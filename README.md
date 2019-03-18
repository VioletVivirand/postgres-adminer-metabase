# postgres-adminer-metabase

A PostgreSQL &amp; Adminer &amp; Metabase Stack with Docker Compose


## Usage

Start up the containers with [Docker Compose](https://docs.docker.com/compose/)

```bash
docker-compose up -d
```

Stop the containers and remove them:

```bash
docker-compose stop && docker-compose rm -f
```

Now visit:

* Adminer: `http://[Host IP Address]:8888` (Then connect PostgreSQL Database with hostname `postgres`)]
* Metabase: `http://[Host IP Address]:3000`

## About the example dataset

The dataset is fetched from the [SQL (Third Edition) Visual QuickStart Guide site](http://www.fehily.com/books/sql_vqs_3.html), which is written and made by [Chris Fehily](http://www.fehily.com), all credits goes to Chris.

And according to the **Initialization scripts** Instruction Section from the [Postgres Container](https://hub.docker.com/_/postgres), the container will run all the scripts in the `/docker-entrypoint-initdb.d` path, so I made the `add-example.sh` to add the example data, and the data source is come from the `sql_vqs3_files` directory.

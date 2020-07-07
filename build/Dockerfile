FROM postgres:12
RUN apt-get update && apt-get install -y --no-install-recommends postgresql-${PG_MAJOR}-periods
COPY ./build/scripts /docker-entrypoint-initdb.d/
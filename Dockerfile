FROM postgres:12.1
COPY scripts/* /docker-entrypoint-initdb.d/
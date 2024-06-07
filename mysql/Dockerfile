FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=root

COPY ./database_tables.sql /docker-entrypoint-initdb.d/

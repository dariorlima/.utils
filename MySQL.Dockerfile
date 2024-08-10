FROM mysql:latest

# Set arguments for the build
ARG SQL_FILE=./dumps/sql/dbexport.sql
ARG DB_NAME=default

# Set the environment variables
ENV MYSQL_DATABASE=$DB_NAME
ENV MYSQL_ROOT_PASSWORD=admin

# MySQL image automatically executes files with extensions .sql, .sh, .sql.gz in the /docker-entrypoint-initdb.d/ directory
COPY $SQL_FILE /docker-entrypoint-initdb.d/
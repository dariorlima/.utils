FROM mysql:latest

# Set arguments for the build
ARG SQL_FILE=./dumps/sql/all_files.sql
ARG DB_NAME=default

# Set the environment variables. Note: ARG variables can't be directly used
ENV MYSQL_DATABASE=${DB_NAME}
ENV MYSQL_ROOT_PASSWORD=admin

RUN echo "DB_NAME=${DB_NAME}" >> /etc/environment

# MySQL image automatically executes files with extensions .sql, .sh, .sql.gz in the /docker-entrypoint-initdb.d/ directory
# Copy the SQL file to the Docker image
# Note: ARG variables are not directly usable in COPY
COPY ./dumps/sql/default_localhost-2024_09_03_23_39_33-dump.sql /docker-entrypoint-initdb.d/init.sql

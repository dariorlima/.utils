# Use the official MongoDB image as the base image
FROM mongo:latest

# Set arguments for the build (path to the script or dataset)
ARG MONGO_INITDB_SCRIPT=./dumps/mongo/init.js
ARG DB_NAME=default

# Set environment variables
ENV MONGO_INITDB_DATABASE=$DB_NAME
# If you need to set the root username and password (optional)
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=admin



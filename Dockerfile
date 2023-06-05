# We don't need to use this dockerfile, because we have specified the docker image in the GitHub Actions workflow file.
# If you are interested running this locally, you can use this file to build the image and run it locally.

FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL "mongdb-connection-protocol"
ENV MONGODB_DB_NAME "your-db-name
ENV MONGODB_CLUSTER_ADDRESS "your-cluster-address"
ENV MONGODB_USERNAME "your-username"
ENV MONGODB_PASSWORD "your-password"

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
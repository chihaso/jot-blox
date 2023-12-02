FROM node:20.10-alpine3.18

WORKDIR /app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install

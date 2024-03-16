#Dockerfile-order-service
FROM node:18

WORKDIR /bundler

COPY ./package*.json ./
COPY yarn.lock /.
RUN yarn install 

COPY . .

RUN yarn & yarn preprocess

CMD yarn run bundler --unsafe
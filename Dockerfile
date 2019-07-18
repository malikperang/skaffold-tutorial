FROM node:8.10.0-alpine

WORKDIR /usr/src/app

COPY package.json .
COPY package-lock.json .
RUN npm install

COPY . .

EXPOSE 3000

CMD node server.js
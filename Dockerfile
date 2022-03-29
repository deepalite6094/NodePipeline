FROM 328974080695.dkr.ecr.us-east-1.amazonaws.com/node-poc:base
#FROM node:12.22.11-alpine3.14

WORKDIR /srv

ADD . .

WORKDIR  ./programs/server

RUN npm install

WORKDIR /srv

RUN . .env

EXPOSE 3000

CMD ["sh", "-c", "source .env && node index.js"]

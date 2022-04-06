FROM 621151048552.dkr.ecr.ap-south-1.amazonaws.com/node-poc-ecr:base
#FROM node:12.22.11-alpine3.14

WORKDIR /srv

ADD . .

WORKDIR  ./programs/server

RUN npm install

WORKDIR /srv

RUN . .env

EXPOSE 3000

CMD ["sh", "-c", "source .env && node index.js"]

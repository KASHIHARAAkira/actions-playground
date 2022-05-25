FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g npm@8.7.0
RUN npm install
RUN npm install pm2 -g

COPY . .

EXPOSE 3000

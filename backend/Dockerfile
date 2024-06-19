FROM node:22-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

COPY wait-for-it.sh /usr/src/app/

ENV APP_PORT=8080

EXPOSE 8080

CMD ["./wait-for-it.sh", "db:3306", "--", "node", "app.js"]

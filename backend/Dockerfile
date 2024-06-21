FROM node:22-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

COPY wait-for-it.sh /usr/src/app/

ENV APP_PORT=5000

EXPOSE 5000

CMD ["./wait-for-it.sh", "db:3306", "--", "node", "app.js"]

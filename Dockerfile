FROM node:18-alpine

WORKDIR /app

RUN apk add --no-cache bash

# Clona o WAHA direto do GitHub
RUN apk add --no-cache git && \
    git clone https://github.com/devlikepro/WAHA.git . && \
    npm install

COPY .env .env

EXPOSE 3000

CMD ["npm", "start"]

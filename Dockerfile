
FROM node:18-alpine

WORKDIR /the/workdir/path

COPY package*.json  ./

RUN npm install

COPY . .

ENV PORT = 3000

EXPOSE 3000

CMD ['npm', 'start']
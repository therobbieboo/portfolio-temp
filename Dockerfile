FROM node:18-alpine

WORKDIR /app

COPY package.json ./
RUN npm install

COPY tts-server.js ./

EXPOSE 3456

CMD ["node", "tts-server.js"]
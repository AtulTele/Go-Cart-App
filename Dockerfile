FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY --chown=node:node . .

RUN npm run build

USER node

EXPOSE 3000

CMD ["npm", "start"]

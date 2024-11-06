FROM node:alpine

WORKDIR /home/app

# install
COPY package*.json ./
RUN npm i

COPY . ./

ENV PORT=3000
EXPOSE $PORT

CMD [ "npm", "start" ]

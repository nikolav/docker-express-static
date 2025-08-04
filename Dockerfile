FROM node:18.20.6

RUN mkdir -p /home/app/public
WORKDIR /home/app

# install
COPY package*.json ./
RUN npm i

COPY . ./

ENV PORT=3000
EXPOSE $PORT

CMD [ "npm", "start" ]


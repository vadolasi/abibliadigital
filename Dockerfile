FROM node:20-alpine

WORKDIR /usr/src/api
COPY package.json yarn.lock ./
RUN yarn install
COPY . .

CMD [ "yarn", "start" ]

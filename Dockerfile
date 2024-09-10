# specify the node base image with your desired version node:<version>
FROM node:16.20.1
# replace this with your application's default port
EXPOSE 4201
EXPOSE 49153
WORKDIR /usr/src/api
COPY package.json yarn.lock ./
RUN yarn install
COPY . .

CMD [ "yarn", "start" ]

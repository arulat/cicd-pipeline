FROM node:20.18-alpine3.20
WORKDIR /opt
ADD . /opt
RUN npm install
ENTRYPOINT npm run start

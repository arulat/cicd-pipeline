FROM node:cicd-app:test
WORKDIR /opt
ADD . /opt
RUN npm install
ENTRYPOINT npm run start

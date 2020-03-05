FROM node:lts-alpine

WORKDIR /app

COPY . /app/

RUN npm install -g editorconfig

RUN yarn upgrade

EXPOSE 8080

ENTRYPOINT VUE_APP_API_URL=$API_URL yarn serve
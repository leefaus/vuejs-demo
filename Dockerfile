FROM node:lts-alpine

WORKDIR /app

COPY . /app/

RUN npm install -g editorconfig

RUN yarn upgrade
RUN yarn build

EXPOSE 9090

ENTRYPOINT VUE_APP_API_URL=$API_URL ./node_modules/.bin/vue-cli-service serve --port 9090 --mode production
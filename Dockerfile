ARG PORT
FROM node:16

WORKDIR /app
COPY . /app

RUN yarn install
RUN yarn build
RUN yarn generate

EXPOSE $PORT

CMD yarn start

ARG PORT
FROM node:14

WORKDIR /app
COPY . /app

RUN yarn install
RUN yarn build
RUN yarn generate

EXPOSE $PORT

CMD yarn start
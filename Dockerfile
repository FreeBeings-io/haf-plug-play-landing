ARG PORT
FROM node:16

WORKDIR /app
COPY . /app

RUN yarn install
RUN yarn build
RUN yarn generate

EXPOSE $PORT

ENV NUXT_HOST=0.0.0.0

CMD yarn start
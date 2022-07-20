ARG PORT
FROM node:14

WORKDIR /usr/src/app

COPY . ./
RUN yarn

EXPOSE $PORT

ENV HOST=0.0.0.0
ENV PORT=$PORT

RUN yarn build

CMD [ "yarn", "start" ]
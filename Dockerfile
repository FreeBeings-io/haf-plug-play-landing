ARG PORT
FROM node:14
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . ./
RUN yarn build
EXPOSE $PORT
CMD [ "export PORT=$PORT && yarn start" ]

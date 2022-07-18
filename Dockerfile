ARG PORT
FROM node:14
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . ./
RUN yarn build
RUN yarn generate
EXPOSE $PORT
CMD [ "PORT=$PORT yarn start" ]

FROM node:14
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . ./
RUN yarn build
CMD PORT=8080 yarn start

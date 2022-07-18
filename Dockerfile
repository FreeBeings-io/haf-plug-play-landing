FROM node:14
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . ./
RUN yarn build
RUN yarn generate
EXPOSE 8080
CMD PORT=8080 yarn start

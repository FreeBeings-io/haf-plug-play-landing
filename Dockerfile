ARG PORT
FROM node:14
WORKDIR /app

COPY . ./
RUN npm install
RUN npm build
EXPOSE $PORT
CMD [ "npm start" ]

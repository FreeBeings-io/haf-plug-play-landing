ARG PORT
ARG NGINX_CONFIG

FROM node:14 AS build
WORKDIR /app

COPY . .
RUN yarn install
RUN yarn generate

FROM nginx:stable
RUN echo $NGINX_CONFIG > /etc/nginx/conf.d/default.conf
COPY — from=build /app/dist/ /var/www/

EXPOSE $PORT
CMD ["nginx -g 'daemon off;'"]
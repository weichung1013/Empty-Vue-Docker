FROM nginx:1.19.10-alpine
WORKDIR /usr/share/nginx/html
COPY ./frontend-empty-vue/dist /usr/share/nginx/html

RUN mkdir -p /etc/nginx/ssl

EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
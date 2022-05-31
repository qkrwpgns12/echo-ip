FROM nginx:stable

LABEL Name=echo-ip Version=0.0.5
COPY nginx.conf /etc/nginx/nginx.conf
COPY cert.crt /etc/nginx/conf.d/cert.crt
COPY cert.key /etc/nginx/conf.d/cert.key
RUN apt-get -y install docker-ce-cli

CMD ["nginx", "-g", "daemon off;"]

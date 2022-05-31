FROM nginx:stable

LABEL Name=echo-ip Version=0.0.5
COPY nginx.conf /etc/nginx/nginx.conf
COPY cert.crt /etc/nginx/conf.d/cert.crt
COPY cert.key /etc/nginx/conf.d/cert.key
RUN addgroup docker --gid 990 && adduser ${USERNAME} docker

CMD ["nginx", "-g", "daemon off;"]

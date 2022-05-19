
FROM nginx:latest

ADD https://raw.githubusercontent.com/daanishkh/nginx/main/cnginx /usr/share/nginx/html/

RUN chmod +r /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]

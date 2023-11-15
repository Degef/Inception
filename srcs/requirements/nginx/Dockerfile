FROM alpine:3.16

RUN apk update && apk upgrade && apk add --no-cache nginx

COPY ./requirements/nginx/conf/nginx.conf /etc/nginx/http.d/nginx.conf

RUN apk update && apk add --no-cache wget curl openssl

RUN mkdir -p /etc/nginx/ssl

RUN  openssl req -x509 -nodes -out /etc/nginx/ssl/dsium.42.fr.crt \
	-keyout /etc/nginx/ssl/dsium.42.fr.key \
	 -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=login.42.fr/UID=login"

RUN chmod 644 /etc/nginx/http.d/nginx.conf

RUN chown -R nginx:nginx /etc/nginx/http.d

RUN chmod 600 /etc/nginx/ssl/dsium.42.fr.crt
RUN chmod 600 /etc/nginx/ssl/dsium.42.fr.key

RUN chown -R nginx:nginx /etc/nginx/http.d /etc/nginx/ssl

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

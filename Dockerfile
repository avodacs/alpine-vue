FROM alpine:latest

# Install nginx
RUN apk add --update nginx

# Copy the files required to run
# COPY publish /var/www/
COPY default.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "pid /tmp/nginx.pid; daemon off;"]

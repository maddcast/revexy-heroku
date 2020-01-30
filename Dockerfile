FROM nginx:1.17.8-alpine

COPY default.conf /tmp

CMD envsubst < /tmp/default.conf > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'

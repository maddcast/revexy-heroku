FROM nginx:1.17.8-alpine

COPY default.conf /etc/nginx/conf.d/default.conf.tmpl

CMD envsubst < /etc/nginx/conf.d/default.conf.tmpl > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'

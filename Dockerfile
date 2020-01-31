FROM openresty/openresty:1.15.8.2-7-alpine-nosse42

COPY default.conf /etc/nginx/conf.d/default.conf

CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]

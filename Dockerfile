FROM ubuntu
RUN  \ 
apt-get update  && \ 
apt-get dist-upgrade -y && \
apt-get install -y nginx-light libnginx-mod-rtmp && \
apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* 
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

COPY etc/nginx /etc/nginx
COPY html html
EXPOSE 8080/tcp
EXPOSE 1935/tcp


STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;error_log /dev/stderr;"]
#CMD ["nginx","-c /etc/nginx/nginx.conf", "-g", "daemon off;error_log /dev/stdout debug;"]


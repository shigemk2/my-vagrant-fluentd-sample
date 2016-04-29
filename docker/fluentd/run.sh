docker run -d \
    --name vagrant-fluentd \
    --restart=always \
    -p 24224:24224/tcp \
    -p 24224:24224/udp \
    -e FLUENTD_CONF=/fluentd/conf/fluent-worker.conf \
    -v /var/log/httpd:/fluentd/logs \
    --net=host \
    vagrant-fluentd

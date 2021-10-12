FROM redis:6 as base

# RUN mkdir -p /redis

COPY config/redis-docker.conf /data/redis.conf
COPY tls/* /data/

CMD [ "redis-server", "/data/redis.conf" ]

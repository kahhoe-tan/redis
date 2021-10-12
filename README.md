# Redis server with server and client TLS enabled

## Setup

1. Copy server certificate into `tls/server.crt`.
2. Copy server private key into `tls/server.key`.
3. Copy the client's CA certificate into `tls/ca.crt` if self-signed CA.
4. Update `requirepass` with your own password in both `config/redis.conf` and `config/redis-docker.conf` if you wish to.

## Starting with `redis-server` binary

If you have redis installed, you can just start redis with this command.

```
$ redis-server config/redis.conf
```

## Starting with docker container

To run redis in docker container, first build the docker image with this command.

```
$ docker build -t redis-custom .
```

When the build is finished, start the container with this command.

```
$ docker run -d --rm -p 8080:6379 --name redis redis-custom
```

## Test connectivity

You can use my [redis-client](https://github.com/kahhoe-tan/redis-client) tool to test connectivity.

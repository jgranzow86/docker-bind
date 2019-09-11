# docker-bind
Simple bind container

---
Example compose file
```
version: "3.7"
services:
  bind:
    image: jgranzow/bind
    volumes:
      - /srv/bind/config:/etc/bind
      - /srv/bind/cache:/var/cache/bind
    ports:
      - 53:53/tcp
      - 53:53/udp
    labels:
     - traefik.enable=false
    deploy:
      restart_policy:
        condition: on-failure
```

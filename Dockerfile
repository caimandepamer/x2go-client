# Imagen para convertir grabaciones codificadas de GUACAMOLE en videos
FROM debian:stable-backports
MAINTAINER caimandepamer  version: alpha01
WORKDIR /root/
RUN apt update && apt install -y x2goclient
RUN export LC_ALL="en_US.UTF-8"
RUN apt clean && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/usr/bin/x2goclient"]

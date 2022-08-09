FROM ubuntu:22.04

ENV TZ=UTC
RUN apt update && apt upgrade -y

RUN apt install -y unbound=1.13.1-1ubuntu5
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
EXPOSE 53 53/udp
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

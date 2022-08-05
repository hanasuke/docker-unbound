FROM ubuntu:22.04

ENV TZ=UTC
RUN apt update && apt upgrade -y

RUN apt install -y unbound=1.13.1-1ubuntu5

EXPOSE 53 53/udp
CMD ["/usr/sbin/unbound", "-d"]

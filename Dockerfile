FROM ubuntu:20.04

# ⬇	Avoid user interaction during `apt-get install`
ENV DEBIAN_FRONTEND noninteractive

USER root

RUN apt-get update && \
	apt-get install -y cups=2\*
RUN apt-get update && \
	apt-get install -y hplip=3\*

COPY ./etc/cups/ /etc/cups/

EXPOSE 631
ENTRYPOINT [ "/usr/sbin/cupsd", "-f" ]

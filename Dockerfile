# ⬇️	Main stage
# 		Ubuntu 22.04 (LTS)
FROM ubuntu:jammy-20230816

#	⬇️	Avoid user interaction during `apt-get install`
ENV DEBIAN_FRONTEND noninteractive

USER root

#	⬇️	Add printer
RUN apt-get update && \
	apt-get install -y cups=2\*
#		⬇️	HP printer driver
RUN apt-get update && \
	apt-get install -y hplip=3\*

COPY ./etc/cups/ /etc/cups/

EXPOSE 631
ENTRYPOINT [ "/usr/sbin/cupsd", "-f" ]

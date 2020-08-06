FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y cups=2.2\*
RUN apt-get update && \
	apt-get install -y hplip=3.17\*

COPY ./etc/cups/ /etc/cups/

EXPOSE 631
ENTRYPOINT [ "/usr/sbin/cupsd", "-f" ]

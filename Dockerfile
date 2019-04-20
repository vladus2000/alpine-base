FROM alpine:latest
MAINTAINER vladus2000 <docker@matt.land>

ENV ENV=/.profile
ENV STARTUP_CMD="sleep 1h"

COPY shiz/ /

RUN \
	apk update && \
	ln -s /.bashrc /root/. && \
	cp /.bashrc /.profile && \
	chmod +x /*.sh

CMD /bin/ash -c /startup.sh


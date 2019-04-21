FROM alpine:latest
MAINTAINER vladus2000 <docker@matt.land>

ENV ENV=/.profile
ENV STARTUP_CMD="sleep 1h"

COPY shiz/ /

RUN \
	ln -s /.bashrc /root/. && \
	cp /.bashrc /.profile && \
	chmod +x /*.sh && \
	/update.sh

CMD /bin/ash -c /startup.sh


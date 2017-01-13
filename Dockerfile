FROM java:8

MAINTAINER Shi-Hai Han <hfirn@163.com>

ENV WORK_HOME=/opt

WORKDIR ${WORK_HOME}

COPY docker-setup.sh docker-entrypoint.sh ${WORK_HOME}/

RUN ${WORK_HOME}/docker-setup.sh

VOLUME /etc/jmeter ${WORK_HOME}/var

EXPOSE 1099 5000 60000

CMD /bin/bash -e docker-entrypoint.sh

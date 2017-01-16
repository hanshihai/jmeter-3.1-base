FROM java:8

MAINTAINER Shi-Hai Han <hfirn@163.com>

ENV WORK_HOME=/opt

WORKDIR ${WORK_HOME}

COPY docker-setup.sh docker-entrypoint.sh ${WORK_HOME}/

RUN ${WORK_HOME}/docker-setup.sh

# Set Jmeter Home
ENV JMETER_HOME=/opt/apache-jmeter-3.1/

# Add Jmeter to the Path
ENV PATH=$JMETER_HOME/bin:$PATH

VOLUME /etc/jmeter ${WORK_HOME}/var

EXPOSE 1099 5000 60000

CMD /bin/bash -e docker-entrypoint.sh

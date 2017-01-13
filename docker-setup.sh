#!/bin/bash -ex

cd /opt

wget http://apache.mirrors.ionfish.org//jmeter/binaries/apache-jmeter-3.1.tgz

tar -xzf apache-jmeter-3.1.tgz

rm -rf apache-jmeter-3.1.tgz

# Set Jmeter Home
export JMETER_HOME="/opt/apache-jmeter-3.1/"

# Add Jmeter to the Path
export PATH="$JMETER_HOME/bin:$PATH"

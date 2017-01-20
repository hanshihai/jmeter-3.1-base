# docker jmeter 3.1 base

##usage

This is a docker repository for JMeter 3.1 base with JDK 8

add below arg if you want to enable proxy when build image

--build-arg http_proxy=http://host:port

==================

* build docker image:

```
docker build -t hanshihai/jmeter-3.1-base .
```

* create container from image and mount the local scripts folder:

```
docker run -d -P --name master -v local_scripts_folder:/opt/apache-jmeter-3.1/scripts -w /opt/apache-jmeter-3.1/scripts hanshihai/jmeter-3.1-base jmeter -n -t script_name args...
```

Then, you can start the master to run the scripts on this slave.

=====================

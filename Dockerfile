#FROM openjdk:8u171-jre-alpine3.8
FROM openjdk:10-jre-slim

# Set version and paths
ENV JMETER_VERSION=4.0.2
ENV PLUGIN_MANAGER_VERSION=1.2
ENV JMETER_HOME=/usr/local/apache-jmeter-${JMETER_VERSION}
ENV PATH=${JMETER_HOME}/bin:${PATH}
ENV PLUGINS_PATH $JMETER_PATH/plugins

# Add test scripts an entrypoint
COPY /jmeter/pt /usr/
COPY /jmeter/uat /usr/
COPY /jmeter/dev /usr/
COPY /jmeter/entrypoint.sh /usr
RUN mkdir -p /usr/logs

# Copy Jmeter 4.0 to local directory in Docker container
COPY jmeter/jmeterfile /usr/local/

# Add the ability to troubleshoot using Curl
#RUN apk update; apk add curl

#RUN apt-get update; apt-get install netstat

ENTRYPOINT ["sh", "/usr/entrypoint.sh"]
FROM openjdk:10-jre-slim

# Set version and paths
ENV JMETER_VERSION=4.0.2
ENV JMETER_HOME=/usr/local/apache-jmeter-${JMETER_VERSION}
ENV PATH=${JMETER_HOME}/bin:${PATH}
ENV PLUGINS_PATH $JMETER_PATH/plugins

#Install Pip - which is required by Taurus
RUN apt-get update && apt-get install -y \
    python-pip

#RUN pip install --upgrade pip
RUN pip install bzt

#Copy scripts and datafiles to /usr
COPY pt usr/pt
COPY entrypoint.sh /usr/

#Copy jmeter and plugins to container
COPY jmeterfile /usr/local/

#Set the entry point to launch the pt test
ENTRYPOINT ["sh", "/usr/entrypoint.sh"]
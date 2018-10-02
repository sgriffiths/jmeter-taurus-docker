# jmeter-taurus-docker
Loadtesting using jmeter and taurus with results published to ElasticSearch

### Required:
Docker and git installed

### Clone the repo:
git clone https://github.com/sgriffiths/jmeter-taurus-docker.git && cd jmeter-taurus-docker

### To Run:
docker-compose up --build {env}
OR
docker-compose run {env}

### Enviroments available:
dev, uat, pt

### Info:
Uses Jmeter 5.0

### With the following plugins:
jmeter-plugins-casutg-2.5.jar
jmeter-plugins-manager-1.3.jar
jmeter.backendlistener.elasticsearch-2.5.1.jar

### To run manually:
BZT:\
bzt ../config.yaml (from the {env} workingdirectory)

### BZT with jmeter GUI: 
cd /pt/workingdirectory

bzt ../config.yaml -gui

### Jmeter Non Gui: 
/jmeterfile/apache-jmeter-5.0/bin/jmeter -n -t pt/scripts/testscript.jmx

### Jmeter with GUI: 
./jmeterfile/apache-jmeter-5.0/bin/jmeter -t pt/scripts/testscript.jmx

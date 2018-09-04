# jmeter-taurus-docker
Loadtesting using jmeter and taurus with results published to ElasticSearch

### Required:
Docker and git installed

### Clone the repo:
git clone https://github.com/sgriffiths/jmeter-taurus-docker.git && cd jmeter-taurus-docker

### To Run:
docker-compose run {env}

Ie docker-compose run pt

### Enviroments available:
dev, uat, pt

### Info:
Uses Jmeter 4.0.2
also uses the https://hub.docker.com/r/scottyg/jmeter-taurus-elastic/ docker image

### To run manually:
BZT:\
bzt ../config.yaml (from the {env} workingdirectory)

### BZT with jmeter GUI: 
cd /pt/workingdirectory

bzt ../config.yaml -gui

### Jmeter Non Gui: 
/jmeterfile/apache-jmeter-4.0.2/bin/jmeter -n -t pt/scripts/testscript.jmx

### Jmeter with GUI: 
./jmeterfile/apache-jmeter-4.0.2/bin/jmeter -t pt/scripts/testscript.jmx

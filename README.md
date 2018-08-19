# jmeter-taurus-docker
Loadtesting using jmeter and taurus with results published to ElasticSearch

#Required:
Docker and git installed

# Clone the repo:
git clone https://github.com/sgriffiths/jmeter-taurus-docker.git

# To Run:
docker-compose run {env}
Ie docker-compose run dev

# Enviroments available:
dev, uat, pt

# Info:
Uses Jmeter 4.0.2
also uses the https://hub.docker.com/r/scottyg/jmeter-taurus-elastic/ image

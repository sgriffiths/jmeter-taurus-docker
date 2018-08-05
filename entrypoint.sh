#!/bin/bash
# moves to workingdirectory to store the large amount of test files for each run
set -e
cd /usr/pt/workingdirectory/

#Runs blazemeter taurus which executes the settings in the config.yaml and points jmeter 4.0.2
bzt ../config.yaml -o modules.jmeter.path=/usr/local/apache-jmeter-4.0.2/bin/jmeter

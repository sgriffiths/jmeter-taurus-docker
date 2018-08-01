#!/bin/bash
# moves to workingdirectory to store the large amount of test files for each run
set -e
cd /usr/pt/workingdirectory/

#Runs blazemeter taurus wich executes whats in the config.yaml and points jmeter that was copied across
bzt ../config.yaml -o modules.jmeter.path=/usr/local/apache-jmeter-4.0.2/bin/jmeter
#!/bin/bash
# moves to workingdirectory to store the large amount of test files for each run
cd ${ENV}

#Runs blazemeter taurus wich executes whats in the config.yaml and points jmeter that was copied across
bzt ../config.yaml -o modules.jmeter.path=/usr/local/apache-jmeter-4.0.2/bin/jmeter \
-o execution.0.concurrency=${THREADS} \
-o execution.0.ramp-up=${RAMPUP} \
-o execution.0.hold-for=${HOLD} \
-o execution.0.steps=${STEPS}
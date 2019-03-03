#!/bin/sh

while ! nc -z eureka-server 8761 ; do
    echo "Waiting for the Eureka Server"
    sleep 3
done
java -jar /opt/lib/user-registration-service-0.0.1.jar
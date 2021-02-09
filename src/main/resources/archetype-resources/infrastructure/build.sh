#!/bin/sh

docker-compose up -d && xdg-open http://localhost:8080/${artifactId}/JNDI > /dev/null 2>&1


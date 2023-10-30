#!/bin/sh
docker-compose up -d oai_enb0
sleep 15
docker-compose up -d oai_ue0
sleep 10
docker ps -a
sleep 15
docker exec rfsim4g-magma-mme /bin/bash -c "cat /var/log/mme.log"


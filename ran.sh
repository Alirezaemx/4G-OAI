#!/bin/sh
BLUE='\033[0;34m'
echo "${BLUE}It will end in 1 minute!"
docker-compose up -d oai_enb0
sleep 15
docker-compose up -d oai_ue0
sleep 2
docker-compose up -d oai_ue1
sleep 2
docker-compose up -d oai_ue2
sleep 2
docker-compose up -d oai_ue3
sleep 2
docker-compose up -d oai_ue4
sleep 2
docker-compose up -d oai_ue5
sleep 2
docker-compose up -d oai_ue6
sleep 2
docker-compose up -d oai_ue7
sleep 2
docker-compose up -d oai_ue8
sleep 2
docker-compose up -d oai_ue9
sleep 12
docker ps -a
sleep 15
docker exec magma-mme /bin/bash -c "cat /var/log/mme.log"
echo "${BLUE}End"


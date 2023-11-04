#!/bin/sh
BLUE='\033[0;34m'
echo "${BLUE}It will end in 1 minute!"
docker-compose up -d db_init
sleep 20
docker logs db-init --follow
sleep 5
docker rm db-init
docker-compose up -d magma_mme oai_spgwu trf_gen
sleep 15
docker ps -a
sleep 20
docker exec magma-mme /bin/bash -c "cat /var/log/mme.log"
echo "${BLUE}End!"

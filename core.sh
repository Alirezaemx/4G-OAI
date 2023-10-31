#!/bin/sh
docker-compose up -d db_init
sleep 20
docker logs rfsim4g-db-init --follow
sleep 5
docker rm rfsim4g-db-init
docker-compose up -d magma_mme oai_spgwu trf_gen
sleep 15
docker ps -a
sleep 10
docker exec rfsim4g-magma-mme /bin/bash -c "cat /var/log/mme.log"

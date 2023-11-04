#!/bin/sh
echo "Pull Docker images:"
docker pull cassandra:2.1
docker pull redis:6.0.5
docker pull oaisoftwarealliance/oai-hss:latest
docker pull oaisoftwarealliance/magma-mme:latest
docker pull oaisoftwarealliance/oai-spgwc:latest
docker pull oaisoftwarealliance/oai-spgwu-tiny:latest
docker pull oaisoftwarealliance/trf-gen-cn5g:latest
docker pull oaisoftwarealliance/oai-enb:2022.w46
docker pull oaisoftwarealliance/oai-lte-ue:2022.w46

#re-tag
#docker image tag oaisoftwarealliance/oai-spgwc:latest oai-spgwc:latest
#docker image tag oaisoftwarealliance/oai-hss:latest oai-hss:latest
#docker image tag oaisoftwarealliance/oai-spgwu-tiny:latest oai-spgwu-tiny:latest 
#docker image tag oaisoftwarealliance/magma-mme:latest magma-mme:latest

#echo "Done"

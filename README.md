# 4G-OAI
4G Network, base on OAI. 
for run OAI 4G Network:
first we need install docker & docker compose, after we can pull docker images. 
```bash
$ docker pull cassandra:2.1
$ docker pull redis:6.0.5
$ docker pull oaisoftwarealliance/oai-hss:latest
$ docker pull oaisoftwarealliance/magma-mme:latest
$ docker pull oaisoftwarealliance/oai-spgwc:latest
$ docker pull oaisoftwarealliance/oai-spgwu-tiny:latest
$ docker pull oaisoftwarealliance/trf-gen-cn5g:latest

$ docker pull oaisoftwarealliance/oai-enb:develop
$ docker pull oaisoftwarealliance/oai-lte-ue:develop
``` 
clone this repository,
```bash
$ git clone https://github.com/Alirezaemx/4G-OAI.git
```
we can run 4G core with below Command.
```bash
$ cd 4G-OAI
$ sudo chmod +x core.sh
$ sudo ./core.sh
```
we can see docker container status.
```bash
$ sudo docker ps -a
```
* Note that all containers must be in up.

command For MME logs:
```bash
$ sudo docker exec rfsim4g-magma-mme /bin/bash -c "cat /var/log/mme.log"
```
After that, we can run the software eNB & Ue part.
```bash
# in 4G-OAI Directorty
$ sudo chmod +x ran.sh
$ sudo ./ran.sh
```

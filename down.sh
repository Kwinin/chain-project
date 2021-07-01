#!/bin/bash
docker-compose -f ./centos-113/e2e_cli/docker-compose-peer.yaml down
docker-compose -f ./centos-114/e2e_cli/docker-compose-peer.yaml down
docker-compose -f ./centos-115/e2e_cli/docker-compose-peer.yaml down
docker-compose -f ./centos-116/e2e_cli/docker-compose-peer.yaml down

docker-compose -f ./centos-111/e2e_cli/docker-compose-orderer.yaml down
docker-compose -f ./centos-113/e2e_cli/docker-compose-orderer.yaml down
docker-compose -f ./centos-114/e2e_cli/docker-compose-orderer.yaml down

docker-compose -f ./centos-111/e2e_cli/docker-compose-ca.yaml down
docker-compose -f ./centos-116/e2e_cli/docker-compose-ca.yaml down


#!/bin/bash
docker-compose -f ./centos-113/e2e_cli/docker-zk.yaml up -d
docker-compose -f ./centos-114/e2e_cli/docker-zk.yaml up -d
docker-compose -f ./centos-115/e2e_cli/docker-zk.yaml up -d

docker-compose -f ./centos-113/e2e_cli/docker-kafka.yaml up -d
docker-compose -f ./centos-114/e2e_cli/docker-kafka.yaml up -d
docker-compose -f ./centos-115/e2e_cli/docker-kafka.yaml up -d
docker-compose -f ./centos-116/e2e_cli/docker-kafka.yaml up -d

docker-compose -f ./centos-111/e2e_cli/docker-compose-orderer.yaml up -d
docker-compose -f ./centos-113/e2e_cli/docker-compose-orderer.yaml up -d
docker-compose -f ./centos-114/e2e_cli/docker-compose-orderer.yaml up -d

docker-compose -f ./centos-113/e2e_cli/docker-compose-peer.yaml up -d
docker-compose -f ./centos-114/e2e_cli/docker-compose-peer.yaml up -d
docker-compose -f ./centos-115/e2e_cli/docker-compose-peer.yaml up -d
docker-compose -f ./centos-116/e2e_cli/docker-compose-peer.yaml up -d

docker-compose -f ./centos-111/e2e_cli/docker-compose-ca.yaml up -d
docker-compose -f ./centos-116/e2e_cli/docker-compose-ca.yaml up -d
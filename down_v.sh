#!/bin/bash
docker-compose -f ./centos-113/e2e_cli/docker-compose-peer.yaml down -v
docker-compose -f ./centos-114/e2e_cli/docker-compose-peer.yaml down -v
docker-compose -f ./centos-115/e2e_cli/docker-compose-peer.yaml down -v
docker-compose -f ./centos-116/e2e_cli/docker-compose-peer.yaml down -v

docker-compose -f ./centos-111/e2e_cli/docker-compose-orderer.yaml down -v
docker-compose -f ./centos-113/e2e_cli/docker-compose-orderer.yaml down -v
docker-compose -f ./centos-114/e2e_cli/docker-compose-orderer.yaml down -v

docker-compose -f ./centos-111/e2e_cli/docker-compose-ca.yaml down -v
docker-compose -f ./centos-116/e2e_cli/docker-compose-ca.yaml down -v

docker-compose -f ./centos-113/e2e_cli/docker-kafka.yaml down -v
docker-compose -f ./centos-114/e2e_cli/docker-kafka.yaml down -v
docker-compose -f ./centos-115/e2e_cli/docker-kafka.yaml down -v
docker-compose -f ./centos-116/e2e_cli/docker-kafka.yaml down -v

docker-compose -f ./centos-113/e2e_cli/docker-zk.yaml down -v
docker-compose -f ./centos-114/e2e_cli/docker-zk.yaml down -v
docker-compose -f ./centos-115/e2e_cli/docker-zk.yaml down -v

rm -rf ./centos-111/e2e_cli/chainData
rm -rf ./centos-113/e2e_cli/chainData
rm -rf ./centos-114/e2e_cli/chainData
rm -rf ./centos-115/e2e_cli/chainData
rm -rf ./centos-116/e2e_cli/chainData

rm -rf ./centos-111/e2e_cli/base/chainData
rm -rf ./centos-113/e2e_cli/base/chainData
rm -rf ./centos-114/e2e_cli/base/chainData
rm -rf ./centos-115/e2e_cli/base/chainData
rm -rf ./centos-116/e2e_cli/base/chainData
#!/bin/bash
path=$1
files=$(ls $path)
for filename in $files
do
  if [[ "$filename" =~ ^centos-.* ]]; then
    echo "$filename :"
    for yaml in docker-compose-peer.yaml docker-compose-orderer.yaml docker-compose-ca.yaml docker-kafka.yaml docker-zk.yaml; do
      if [ -f "$filename/e2e_cli/$yaml" ];then
        set -x
        docker-compose -f $filename/e2e_cli/$yaml down -v
        set +x
        else
        echo "文件不存在, 已忽略"
      fi
    done
    set -x
    rm -rf $filename/e2e_cli/chainData
    rm -rf $filename/e2e_cli/base/chainData
    rm -rf $filename/e2e_cli/channel-artifacts
    rm -rf $filename/e2e_cli/crypto-config
    set +x
  fi
done
rm -rf chainData
rm -rf channel-artifacts
rm -rf crypto-config
mkdir channel-artifacts

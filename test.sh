#!/bin/bash
path=$1
files=$(ls $path)
project_path=$(cd `dirname $0`; pwd)
for filename in $files
do
  if [[ "$filename" =~ ^centos-.* ]]; then
    echo "$filename :"
    for yaml in docker-compose-peer.yaml docker-compose-orderer.yaml docker-compose-ca.yaml docker-kafka.yaml docker-zk.yaml; do
      if [ -f "$filename/e2e_cli/$yaml" ];then
        echo "文件存在"
        else
        echo "文件不存在"
      fi
    done
  fi
done


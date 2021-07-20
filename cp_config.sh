#!/bin/bash
path=$1
files=$(ls $path)
for filename in $files
do
  if [[ "$filename" =~ ^centos-.* ]]; then
    echo "$filename :"
    set -x
    cp -r crypto-config  $filename/e2e_cli
    cp -r channel-artifacts $filename/e2e_cli
    set +x
  fi
done

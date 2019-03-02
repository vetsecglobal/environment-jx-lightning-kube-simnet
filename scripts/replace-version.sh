#!/bin/bash

version=$1
file=$2

offset=2

pwd
ls -al

line=$(grep -n "btcd-kube" ${file} | head -n 1 | cut -d: -f1)

line=$((${line} + ${offset}))

echo "line: ${line}"

sed "${line}s/.*/${version}/" ${file}
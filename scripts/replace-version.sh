#!/bin/bash

file=$1
app=$2
version=$3

offset=2

pwd
ls -al

line=$(grep -n ${app} ${file} | head -n 1 | cut -d: -f1)

line=$((${line} + ${offset}))

echo "line: ${line}"

sed -i "${line}s/.*/${version}/" ${file}
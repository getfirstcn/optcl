#!/bin/bash -ex

kubectl get secret aliyun-vpc-registr -n f002 || echo $?
echo $?

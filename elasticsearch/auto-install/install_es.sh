#!/bin/bash
tar -xzvf ./elasticsearch-7.3.2-linux-x86_64.tar.gz
cp ./jvm.options ./elasticsearch-7.3.2/config
cp ./elasticsearch.yml ./elasticsearch-7.3.2/config
ip=$(ifconfig eth0 | grep "inet addr:" | awk '{ print $2}'|tr -d "addr:")
sed -i "s/NETWORKVAL/$ip/g" ./elasticsearch-7.3.2/config/elasticsearch.yml
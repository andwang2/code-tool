#!/bin/bash
tar -xzvf ./elasticsearch-7.3.2-linux-x86_64.tar.gz
cp ./jvm.options ./elasticsearch-7.3.2/config
cp ./elasticsearch.yml ./elasticsearch-7.3.2/config
#ip=$(ifconfig ens33 | grep "inet " | awk '{ print $2}')
ip=192.168.7.7
sed -i "s/NETWORKVAL/$ip/g" ./elasticsearch-7.3.2/config/elasticsearch.yml
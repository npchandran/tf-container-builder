#!/bin/bash -e

# here we have ALL versions cause master branch is used to initialise cache for all branches

if ! which wget; then
   echo "ERROR: wget is not found. please install it. exit"
   exit 1
fi

CACHE_DIR=${CACHE_DIR:-'/tmp/cache'}

mkdir -p $CACHE_DIR || true
cd $CACHE_DIR

wget -nv -t3 -P containernetworking/cni/releases/download/v0.3.0 https://github.com/containernetworking/cni/releases/download/v0.3.0/cni-v0.3.0.tgz
wget -nv -t3 -P tungstenfabric/tf-third-party-cache/raw/master/tshark https://github.com/tungstenfabric/tf-third-party-cache/raw/master/tshark/tshark3_2.tar.bz2
wget -nv -t3 -P dnsmasq  http://www.thekelleys.org.uk/dnsmasq/dnsmasq-2.80.tar.xz

wget -nv -t3 -P rabbitmq/erlang/packages/el/7/erlang-21.3.8.21-1.el7.x86_64.rpm https://packagecloud.io/rabbitmq/erlang/packages/el/7/erlang-21.3.8.21-1.el7.x86_64.rpm/download.rpm
wget -nv -t3 -P rabbitmq/rabbitmq-server/packages/el/7/rabbitmq-server-3.7.20-1.el7.noarch.rpm https://packagecloud.io/rabbitmq/rabbitmq-server/packages/el/7/rabbitmq-server-3.7.20-1.el7.noarch.rpm/download.rpm

wget -nv -t3 -P pip/2.7 https://bootstrap.pypa.io/pip/2.7/get-pip.py

wget -nv -t3 -P dist/cassandra/3.11.3 https://archive.apache.org/dist/cassandra/3.11.3/apache-cassandra-3.11.3-bin.tar.gz

# up to 2011.L1
wget -nv -t3 -P dist/zookeeper/zookeeper-3.6.1 https://archive.apache.org/dist/zookeeper/zookeeper-3.6.1/apache-zookeeper-3.6.1-bin.tar.gz
# from 2011.L2, 21.3
wget -nv -t3 -P dist/zookeeper/zookeeper-3.6.3 https://archive.apache.org/dist/zookeeper/zookeeper-3.6.3/apache-zookeeper-3.6.3-bin.tar.gz
wget -nv -t3 -P dist/zookeeper/zookeeper-3.7.0 https://archive.apache.org/dist/zookeeper/zookeeper-3.7.0/apache-zookeeper-3.7.0-bin.tar.gz

# up to 2011.L1
wget -nv -t3 -P tungstenfabric/tf-third-party-cache/blob/master/kafka https://github.com/tungstenfabric/tf-third-party-cache/blob/master/kafka/kafka_2.11-2.3.1.tgz?raw=true
# from 2011.L2, 21.3
wget -nv -t3 -P apache/kafka/2.6.2 https://mirror.linux-ia64.org/apache/kafka/2.6.2/kafka_2.12-2.6.2.tgz

wget -nv -t3 -P tungstenfabric/tf-third-party-cache/blob/master/redis https://github.com/tungstenfabric/tf-third-party-cache/blob/master/redis/redis40u-4.0.14-2.el7.ius.x86_64.rpm?raw=true
# from 2011.L3, 21.3
wget -nv -t3 -P tungstenfabric/tf-third-party-cache/blob/master/redis https://github.com/tungstenfabric/tf-third-party-cache/blob/master/redis/redis-6.0.15-1.el7.remi.x86_64.rpm?raw=true

wget -nv -t3 -P Juniper/ansible-junos-stdlib/archive https://github.com/Juniper/ansible-junos-stdlib/archive/2.4.2.tar.gz

# test-base contianer
wget -nv -t3 -P 2.34 http://chromedriver.storage.googleapis.com/2.34/chromedriver_linux64.zip

#!/bin/bash

# config path
mkdir -p /pocket/conf/hadoop/2.4.0/cluster

# namenode path
mkdir -p /pocket/hdfs/2.4.0/cluster/namenode
mkdir -p /pocket/hdfs/2.4.0/cluster/namenode2-checkpoint
mkdir -p /pocket/hdfs/2.4.0/cluster/datanode
mkdir -p /pocket/hdfs/2.4.0/cluster/yarn/nm-local-dir
mkdir -p /pocket/hdfs/2.4.0/cluster/yarn/nm-log-dir/userlogs

# log file path
mkdir -p /pocket/log/hadoop/2.4.0/cluster/

# download package
if [[ ! -n "/bigpkg/hadoop-2.4.0/bin/hdfs" ]] ; then
	curl -L "http://pc-master:10120/hadoop-2.4.0.tar.gz" | tar xvz -C /bigpkg 2>&1
	chown -R pocket:pocket "/bigpkg/hadoop-2.4.0"
fi
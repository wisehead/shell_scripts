#!/bin/sh 
sh load.sh stop
echo '[Stop Log Service ... ok]'
rm -rf raftdata
echo '[Clean Raft Data ... ok]'
sh load.sh start
echo '[Start Log Service ... ok]'


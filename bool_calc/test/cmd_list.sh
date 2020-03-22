#############################################################
#   File Name: cmd_list.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-16:51:13
#############################################################
#!/bin/sh 
#!/bin/bash

echo $#
echo $1
! ([ $# -eq 1 ] && (echo $1 | grep ^[0-9]*$ >/dev/null)) && exit 1

echo "YES"

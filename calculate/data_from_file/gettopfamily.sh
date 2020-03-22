#############################################################
#   File Name: gettopfamily.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-09:27:37
#############################################################
#!/bin/sh 
#!/bin/bash
# gettopfamily.sh

[ $# -lt 1 ] && echo "please input the income file" && exit -1
[ ! -f $1 ] && echo "$1 is not a file" && exit -1

income=$1
awk '{
    printf("%d %0.2f\n", $1, $3/$2);
}' $income | sort -k 2 -n -r

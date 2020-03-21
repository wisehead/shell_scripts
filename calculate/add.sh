#############################################################
#   File Name: add.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/21-21:51:21
#############################################################
#!/bin/bash 
i=0;
 ((i++))
 echo $i
#1

let i++
echo $i
#2

expr $i + 1
#3

echo $i
#2

echo $i 1 | awk '{printf $1+$2}'
#3

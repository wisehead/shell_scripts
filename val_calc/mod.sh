#############################################################
#   File Name: mod.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/21-22:06:20
#############################################################
#!/bin/sh 
expr 5 % 2
#1

let i=5%2
echo $i
#1

echo 5 % 2 | bc
#1

((i=5%2))
echo $i
#1

#############################################################
#   File Name: genrandomdata.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-09:38:01
#############################################################
#!/bin/sh 
#!/bin/bash
# genrandomdata.sh

for i in $(seq 1 10)
do
    echo $i $(($RANDOM/8192+3)) $(($RANDOM/10+3000))
done

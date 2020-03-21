#############################################################
#   File Name: num_base_convert.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/21-22:12:31
#############################################################
#!/bin/sh 
echo "obase=10;ibase=8;11" | bc -l
#9

echo $((8#11))
#9

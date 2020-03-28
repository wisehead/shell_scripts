#############################################################
#   File Name: awk.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:06:00
#############################################################
#!/bin/sh 
var="get the length of me"
echo $var | sed -e 's/ /_/'    #s <= substitude
#get_the length of me
echo $var | sed -e 's/ /_/g'   #看到没有，简短两个命令就实现了最小匹配和最大匹配g <= global
#get_the_length_of_me

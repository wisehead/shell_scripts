#############################################################
#   File Name: sh.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:05:13
#############################################################
#!/bin/sh 
var="get the length of me"
echo ${var/ /_}        #把第一个空格替换成下划线
#get_the length of me
echo ${var// /_}       #把所有空格都替换成下划线
#get_the_length_of_me

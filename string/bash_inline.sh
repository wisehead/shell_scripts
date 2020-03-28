#############################################################
#   File Name: bash_inline.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:51:57
#############################################################
#!/bin/bash 
var="get the length of me"
echo ${var%% *} #从右边开始计算，删除最左边的空格右边的所有字符
#get
echo ${var% *} #从右边开始计算，删除第一个空格右边的所有字符
#get the length of
echo ${var##* }  #从左边开始计算，删除最右边的空格左边的所有字符
#me
echo ${var#* }  #从左边开始计算，删除第一个空格左边的所有字符
#the length of me

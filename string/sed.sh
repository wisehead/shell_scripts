#############################################################
#   File Name: sed.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-17:23:45
#############################################################
#!/bin/sh 
var="get the length of me"
#删除所有 空格＋字母组合 的字符串：
echo $var | sed 's/ [a-z]*//g'
#get
echo $var | sed 's/[a-z]* //g'
#me

#sed 有按地址（行）打印(p)的功能，记得先用 tr 把空格换成行号：
echo $var | tr " " "\n" | sed -n 1p
#get
echo $var | tr " " "\n" | sed -n 5p
#me

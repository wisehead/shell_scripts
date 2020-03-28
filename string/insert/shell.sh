#############################################################
#   File Name: shell.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:16:49
#############################################################
#!/bin/sh 
var="get the length of me"
echo ${var/ /_ }        #在指定字符串之前插入一个字符串
#get_ the length of me
echo ${var// /_ }
#get_ the_ length_ of_ me
echo ${var/ / _}        #在指定字符串之后插入一个字符串
#get _the length of me
echo ${var// / _}
#get _the _length _of _me

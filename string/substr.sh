#############################################################
#   File Name: substr.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-17:03:08
#############################################################
#!/bin/sh 
var="get the length of me"
echo ${var:0:3}
#get

echo ${var:(-2)}   # 方向相反呢
#me

#echo `expr substr "$var" 5 3` #记得把$var引起来，否则expr会因为空格而解析错误
#the

echo $var | awk '{printf("%s\n", substr($0, 9, 6))}'
#length

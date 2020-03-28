#############################################################
#   File Name: tr.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-17:26:24
#############################################################
#!/bin/sh 
var="get the length of me"
#tr 也可以用来取子串，它可以类似#和 % 来“拿掉”一些字符串来实现取子串：
echo $var | tr -d " "
#getthelengthofme
echo $var | tr -cd "[a-z]" #把所有的空格都拿掉了，仅仅保留字母字符串，注意-c和-d的用法
#getthelengthofme

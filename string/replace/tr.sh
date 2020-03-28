#############################################################
#   File Name: awk.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:06:00
#############################################################
#!/bin/sh 
var="get the length of me"
echo $var | tr " " "_"
#get_the_length_of_me
echo $var | tr '[a-z]' '[A-Z]'   #这个可有意思了，把所有小写字母都替换为大写字母
#GET THE LENGTH OF ME

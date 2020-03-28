#############################################################
#   File Name: regex.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:49:03
#############################################################
#!/bin/sh 
url="ftp://anonymous:ftp@mirror.lzu.edu.cn/software/scim-1.4.7.tar.gz"
#匹配URL地址，判断URL地址的有效性
echo $url | grep "ftp://[a-z]*:[a-z]*@[a-z\./-]*"
#截取服务器类型
#bash 特性
echo ${url%%:*}
#ftp
echo $url | cut -d":" -f 1
#ftp
#截取域名
tmp=${url##*@} ; echo ${tmp%%/*}
#mirror.lzu.edu.cn

#截取路径
tmp=${url##*@} ; echo ${tmp%/*}
#mirror.lzu.edu.cn/software

#截取文件名
basename $url
#scim-1.4.7.tar.gz
echo ${url##*/}
#scim-1.4.7.tar.gz

#截取文件类型（扩展名）
echo $url | sed -e 's/.*[0-9].\(.*\)/\1/g'
#tar.gz

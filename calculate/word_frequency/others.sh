#############################################################
#   File Name: others.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-11:02:33
#############################################################
#!/bin/sh 
cat index.html | sed -e "s/[^a-zA-Z]/\n/g" | grep -v ^$ | sort | grep -E "^tinylab$|^linux$" | uniq -c
cat index.html | sed -e "s/[^a-zA-Z]/\n/g" | grep -v ^$ | sort | egrep  "^tinylab$|^linux$" | uniq -c
sed -e "s/[^a-zA-Z]/\n/g" index.html | grep -v ^$ | sort | egrep  "^tinylab$|^linux$" | uniq -c:wq


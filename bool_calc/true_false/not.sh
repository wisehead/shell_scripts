#############################################################
#   File Name: not.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-16:27:46
#############################################################
#!/bin/sh 
if ! false;then echo "YES"; else echo "NO"; fi
#YES
if ! true;then echo "YES"; else echo "NO"; fi
#NO

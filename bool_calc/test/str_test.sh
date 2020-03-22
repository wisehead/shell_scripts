#############################################################
#   File Name: str_test.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-16:43:05
#############################################################
#!/bin/sh 
if test -n "not empty";then echo "YES"; else echo "NO"; fi
#YES
if test -z "not empty";then echo "YES"; else echo "NO"; fi
#NO
if test -z "";then echo "YES"; else echo "NO"; fi
#YES
if test -n "";then echo "YES"; else echo "NO"; fi
#NO

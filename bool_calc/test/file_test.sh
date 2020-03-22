#############################################################
#   File Name: file_test.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-16:43:55
#############################################################
#!/bin/sh 
if test -f /boot/System.map; then echo "YES"; else echo "NO"; fi
#YES
if test -d /boot/System.map; then echo "YES"; else echo "NO"; fi
#NO

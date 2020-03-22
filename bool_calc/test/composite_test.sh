#############################################################
#   File Name: composite_test.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-16:44:38
#############################################################
#!/bin/sh 
a=5;b=4;c=6;
if test $a -eq 5 -a $b -eq 4 -a $c -eq 6; then echo "YES"; else echo "NO"; fi
#YES

if test -f /etc/profile -o -d /etc/profile;then echo "YES"; else echo "NO"; fi
#YES

if test ! -f /etc/profile; then echo "YES"; else echo "NO"; fi
#NO

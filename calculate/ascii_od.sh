#############################################################
#   File Name: ascii_od.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/21-22:22:54
#############################################################
#!/bin/sh 
echo -n "$IFS" | od -c
#0000000      t  n
#0000003
echo -n "$IFS" | od -b
#0000000 040 011 012
#0000003`
man ascii

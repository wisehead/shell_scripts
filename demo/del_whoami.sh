#############################################################
#   File Name: del_whoami.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/06/29-19:44:53
#############################################################
#!/bin/sh 
cd /home/corefile && ls -ltr | grep `whoami` | awk '{print $9}' | xargs rm -f 

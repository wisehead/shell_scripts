#############################################################
#   File Name: awk_kill_mysql.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/08/03-17:03:34
#############################################################
#!/bin/sh 
kill `ps -u chenhui4|grep mysqld | awk '{print $1}'`

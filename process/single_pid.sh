#############################################################
#   File Name: single_pid.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-22:07:40
#############################################################
#!/bin/sh 
pidfile=/tmp/$0".pid"
if [ -f $pidfile ]; then
       OLDPID=$(cat $pidfile)
    ps -e -o "%p" | tr -d " " | grep -q "^$OLDPID$"
    [ $? -eq 0 ] && exit
fi

echo $$ > $pidfile

#... 代码主体

#设置信号0的动作，当程序退出时触发该信号从而删除掉临时文件
trap "rm $pidfile"      0

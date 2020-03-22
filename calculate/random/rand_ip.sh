#############################################################
#   File Name: rand_ip.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-09:46:14
#############################################################
#!/bin/sh 
#!/bin/bash
# getip.sh -- get an usable ipaddress automatically
# author: falcon &lt;zhangjinw@gmail.com>
# update: Tue Oct 30 23:46:17 CST 2007

#思考：如果要随机产生某个 IP 段的 IP 地址，该如何做呢？看例子：友善地获取一个可用的 IP 地址。

#说明：如果你的默认网关地址不是 192.168.1.1，请自行配置 default_gateway（可以用 route -n 命令查看），因为用 ifconfig 配置地址时不能配置为网关地址，否则你的IP地址将和网关一样，导致整个网络不能正常工作。

# set your own network, default gateway, and the time out of "ping" command
net="192.168.1"
default_gateway="192.168.1.1"
over_time=2

# check the current ipaddress
ping -c 1 $default_gateway -W $over_time
[ $? -eq 0 ] && echo "the current ipaddress is okey!" && exit -1;

while :; do
    # clear the current configuration
    ifconfig eth0 down
    # configure the ip address of the eth0
    ifconfig eth0 \
        $net.$(($RANDOM /130 +2)) \
        up
    # configure the default gateway
    route add default gw $default_gateway
    # check the new configuration
    ping -c 1 $default_gateway -W $over_time
    # if work, finish
    [ $? -eq 0 ] && break
done

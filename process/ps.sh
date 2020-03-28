#############################################################
#   File Name: ps.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-21:35:45
#############################################################
#!/bin/sh 
#查看系统当前所有进程的属性：
ps -ef

#查看命令中包含某字符的程序对应的进程，进程 ID 是 1 。 TTY 为？表示和终端没有关联：
ps -C init
#  PID TTY          TIME CMD
#    1 ?        00:00:01 init

#选择某个特定用户启动的进程：
ps -U falcon

#按照指定格式输出指定内容，下面输出命令名和 cpu 使用率：
ps -e -o "%C %c"

#打印 cpu 使用率最高的前 4 个程序：
ps -e -o "%C %c" | sort -u -k1 -r | head -5
# 7.5 firefox-bin
# 1.1 Xorg
# 0.8 scim-panel-gtk
# 0.2 scim-bridge

#获取使用虚拟内存最大的 5 个进程：
ps -e -o "%z %c" | sort -n -k1 -r | head -5
#349588 firefox-bin
# 96612 xfce4-terminal
# 88840 xfdesktop
# 76332 gedit
# 58920 scim-panel-gtk

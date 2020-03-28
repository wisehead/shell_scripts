#############################################################
#   File Name: joint.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-19:07:37
#############################################################
#!/bin/sh 
#说明： join 命令用来连接两个文件，有点类似于数据库的两个表的连接。 -t 指定分割符，-1 4 -2 3 指定按照第一个文件的第 4 列和第二个文件的第 3 列，即组 ID 进行连接，-o``1.1,2.1 表示仅仅输出第一个文件的第一列和第二个文件的第一列，这样就得到了我们要的结果
join -o 1.1,2.1 -t":" -1 4 -2 3 /etc/passwd /etc/group
#root:root
#bin:bin
#daemon:daemon
#adm:adm
#lp:lp
#pop:pop
#nobody:nogroup
#falcon:users

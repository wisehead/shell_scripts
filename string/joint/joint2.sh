#############################################################
#   File Name: joint2.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-19:09:11
#############################################################
#!/bin/sh 
#不过，可惜的是，这个结果并不准确，再进行下面的操作，你就会发现：
#可以看到这个结果才是正确的，所以以后使用 join 千万要注意这个问题，否则采取更保守的做法似乎更能保证正确性，更多关于文件连接的讨论见参考后续资料。
cat /etc/group | sort -t":" -n -k 3 > /tmp/group
join -o 1.1,2.1 -t":" -1 4 -2 3 /tmp/passwd /tmp/group
#halt:root
#operator:root
#root:root
#shutdown:root
#sync:root
#bin:bin
#daemon:daemon
#adm:adm
#lp:lp
#pop:pop
#nobody:nogroup
#falcon:users
#games:users

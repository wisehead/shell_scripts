#############################################################
#   File Name: grep_line.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:57:31
#############################################################
#!/bin/sh 
#打印出答案前指定行范围：第 7 行到第 9 行，刚好找出了第 2 题的答案

sed -n 7,9p README
#7.2 it will depend on the exection mode, interactive or redirection to a file,
#if interactive, the "output" action will accur after the \n char with the line
#	buffer mode, else, it will be really "printed" after all of the strings have

#其实，因为这个文件内容格式很有特色，有更简单的办法
awk '/7.2/,/^$/ {printf("%s\n", $0);}' README
#7.2 it will depend on the exection mode, interactive or redirection to a file,
#if interactive, the "output" action will accur after the \n char with the line
#	buffer mode, else, it will be really "printed" after all of the strings have
#	been stayed in the buffer.

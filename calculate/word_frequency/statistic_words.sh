#############################################################
#   File Name: word_count.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-10:24:26
#############################################################
#!/bin/sh 
#!/bin/bash
# statistic_words.sh
#说明：

#if 条件部分：要求至少两个参数，第一个单词文件，之后参数为要统计的单词
#FILE=$1: 获取文件名，即脚本之后的第一个字符串
#((WORDS_NUM=$#-1))：获取单词个数，即总的参数个数 $# 减去文件名参数（1个）
#for 循环部分：首先通过 seq 产生需要统计的单词个数系列，shift 是 Shell 内置变量（请通过 help shift 获取帮助)，它把用户从命令行中传入的参数依次往后移动位置，并把当前参数作为第一个参数即 $1，这样通过 $1就可以遍历用户所有输入的单词（仔细一想，这里貌似有数组下标的味道）。你可以考虑把 shift 之后的那句替换成 echo $1 测试 shift 的用法



if [ $# -lt 1 ]; then
    echo "Usage: basename $0 FILE WORDS ...."
    exit -1
fi

FILE=$1
((WORDS_NUM=$#-1))

for n in $(seq $WORDS_NUM)
do
    shift
    cat $FILE | sed -e "s/[^a-zA-Z]/\\
/g" \
        | grep -v ^$ | sort | grep ^$1$ | uniq -c
done

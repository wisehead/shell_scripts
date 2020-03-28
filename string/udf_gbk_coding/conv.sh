#############################################################
#   File Name: iconv.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:46:39
#############################################################
#!/bin/sh 
nihao_utf8=$(echo "你好")
echo $nihao_utf8
nihao_gb2312=$(echo $nihao_utf8 | iconv -f utf8 -t gb2312)
echo $nihao_gb2312

#############################################################
#   File Name: len.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-17:26:16
#############################################################
#!/bin/sh 
#范例：计算某个字符串的长度
#即计算所有字符的个数，计算方法五花八门，择其优着而用之：
var="get the length of me"
echo ${var}     # 这里等同于$var
#get the length of me
echo ${#var}
#20
#expr length "$var"
expr length "$var"
#20
echo $var | awk '{printf("%d\n", length($0));}'
#20
echo -n $var |  wc -c
#20

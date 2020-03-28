#############################################################
#   File Name: shell.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:34:10
#############################################################
#!/bin/sh 
var="get the length of me"
echo ${var// /}
#getthelengthofme

#awk
echo $var | awk '{gsub(" ","",$0); printf("%s\n", $0);}'

#sed
echo $var | sed 's/ //g'
#getthelengthofme

#tr
echo $var | tr -d " "
#getthelengthofme

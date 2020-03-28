#############################################################
#   File Name: awk.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:06:00
#############################################################
#!/bin/sh 
var="get the length of me"
echo $var | awk '{sub(" ", "_", $0); printf("%s\n", $0);}'
#get_the length of me
echo $var | awk '{gsub(" ", "_", $0); printf("%s\n", $0);}'
#get_the_length_of_me

#############################################################
#   File Name: storage.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-16:16:23
#############################################################
#!/bin/sh 
var="get the length of me"
for i in $var; do echo -n $i"_"; done
echo " "
#get_the_length_of_me_
#split 把一行按照空格分割，存放到数组 var\_arr 中，并返回数组长度。注意：这里第一个元素下标不是 0，而是 1
echo $var | awk '{printf("%d %s\n", split($0, var_arr, " "), var_arr[1]);}'
#5 get
echo $var | awk '{printf("%d | %s %s %s %s %s | %s\n", NF, $1, $2, $3, $4, $5, $0);}'
#5 | get the length of me | get the length of me
echo $var | awk '{split($0, var_arr, " "); for(i in var_arr) printf("%s ",var_arr[i]);}'
#of me get the length
#4 5 1 2 3
echo $var | awk '{printf("%s\n", $1);}'
#get
echo $var | awk '{printf("%s\n", $5);}'
#me

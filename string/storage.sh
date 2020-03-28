#############################################################
#   File Name: storage.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-16:16:23
#############################################################
#!/bin/sh 
var="get the length of me"
var_arr=($var)    #把字符串var存放到字符串数组var_arr中，默认以空格作为分割符
echo ${var_arr[0]} ${var_arr[1]} ${var_arr[2]} ${var_arr[3]} ${var_arr[4]}
#get the length of me
echo ${var_arr[@]}    #整个字符串，可以用*代替@，下同
#get the length of me
echo ${#var_arr[@]}   #类似于求字符串长度，`#`操作符也可用来求数组元素个数
#5

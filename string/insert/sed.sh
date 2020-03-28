#############################################################
#   File Name: sed.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:30:10
#############################################################
#!/bin/sh 
var="get the length of me"
echo $var | sed -e 's/\( \)/_\1/'
#get_ the length of me
echo $var | sed -e 's/\( \)/_\1/g'
#get_ the_ length_ of_ me
echo $var | sed -e 's/\( \)/\1_/'
#get _the length of me
echo $var | sed -e 's/\( \)/\1_/g'
#get _the _length _of _me

#看看 sed 的标签的顺序是不是 \1,\2...，看到没？\2 和 \1 调换位置后，the 和 get 的位置掉换了：
echo $var | sed -e 's/\([a-z]*\) \([a-z]*\) /\2 \1 /g'
#the get of length me


#############################################################
#   File Name: find_sql.sh
#     Autohor: Hui Chen (c) 2017
#        Mail: chenhui13@baidu.com
# Create Time: 2017/01/16-10:12:29
#############################################################
#!/bin/sh 
head -$1 whitelist.vector |tail -1 >.temp.haha.txt
var2=$(grep -f .temp.haha.txt normal_sql.1246964.sql.vec -n -m 1|awk -F : '{print$1}'|xargs)
#echo "var2 is"
echo $var2
#var3=`grep -f .temp.haha.txt normal_sql.1246964.sql.vec -n -m 1|awk -F : '{print$1}'`
head -$var2 normal_sql.1246964.sql|tail -1  

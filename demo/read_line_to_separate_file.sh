#############################################################
#   File Name: a.sh
#     Autohor: Hui Chen (c) 2018
#        Mail: chenhui13@baidu.com
# Create Time: 2018/04/12-10:14:01
#############################################################
#!/bin/sh 
for i in {1..10}
    do 
        echo $i 
        head -$i $var $1|tail -1 >$i.sql  
        #sleep 10
    done    

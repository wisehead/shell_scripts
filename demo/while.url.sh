#############################################################
#   File Name: while.sh
#     Autohor: Hui Chen (c) 2018
#        Mail: chenhui13@baidu.com
# Create Time: 2018/06/14-18:25:14
#############################################################
#!/bin/sh 
#!/bin/bash
i=1
base=10000000000
sum=0
while (( i < 10001 ))
do
	 #echo "i: $i, sum: $sum"
	 #echo "http://www.morganchain.org/_/source?code=11301021502291806160$sum"
     let "sum=$base+$i"
	 echo "http://www.morganchain.org/_/source?code=11301021502291806160$sum"
     let "i++"
done

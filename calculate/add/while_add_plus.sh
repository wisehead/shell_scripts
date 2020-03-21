#############################################################
#   File Name: for_add.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/21-21:54:26
#############################################################
#!/bin/bash

i=0;
while [ $i -lt 10000 ]
do
    #((i++))
	let i++;
	#i=$(expr $i + 1)
	#i=$(echo $i+1|bc)
	#i=$(echo "$i 1" | awk '{printf $1+$2;}')
done
echo $i

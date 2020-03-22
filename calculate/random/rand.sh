#############################################################
#   File Name: rand.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-09:40:33
#############################################################
#!/bin/sh 
echo $RANDOM
#81

echo "" | awk '{srand(); printf("%f", rand());}'
#0.237788

expr $RANDOM / 128
expr $RANDOM / 8

echo "" | awk '{srand(); printf("%d\n", rand()*255);}'

#############################################################
#   File Name: links.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-10:21:36
#############################################################
#!/bin/sh 
for i in `seq -f"http://thns.tsinghua.edu.cn/thnsebooks/ebook73/%02g.pdf" 1 21`;do wget -c $i; done

for i in `seq -w 1 21`;do wget -c "http://thns.tsinghua.edu.cn/thnsebooks/ebook73/$i"; done

for i in {1..5}; do echo -n "$i "; done
#1 2 3 4 5

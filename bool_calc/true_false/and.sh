#############################################################
#   File Name: and.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-16:26:07
#############################################################
#!/bin/sh 
if true && true;then echo "YES"; else echo "NO"; fi
#YES
if true && false;then echo "YES"; else echo "NO"; fi
#NO
if false && false;then echo "YES"; else echo "NO"; fi
#NO
if false && true;then echo "YES"; else echo "NO"; fi
#NO

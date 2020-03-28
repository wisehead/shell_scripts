#############################################################
#   File Name: grep.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-17:46:48
#############################################################
#!/bin/sh 
var="get the length of me"
echo "==awk"
echo $var | awk '{printf("%d\n", match($0,"the"));}'

echo "==grep"
grep "consists of" test.txt   # 查询文件包含consists of的行，并打印这些行
echo "==grep -n -H"
grep "consists[[:space:]]of" -n -H test.txt # 打印文件名，子串所在行的行号和该行的内容
echo "==grep -n -0"
grep "consists[[:space:]]of" -n -o test.txt # 仅仅打印行号和匹配到的子串本身的内容

echo "==awk"
awk '/consists of/{ printf("%s:%d:%s\n",FILENAME, FNR, $0)}' test.txt  #看到没？和grep的结果一样
echo "==sed"
sed -n -e '/consists of/=;/consists of/p' test.txt #同样可以打印行号

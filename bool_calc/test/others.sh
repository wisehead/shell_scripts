#############################################################
#   File Name: others.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-16:47:49
#############################################################
#!/bin/sh 
#范例：要求某文件可执行且有内容，用 -a 和 && 分别实现
chmod +x test.sh
if test -s test.sh -a -x test.sh; then echo "YES"; else echo "NO"; fi
#YES
if test -s test.sh && test -x test.sh; then echo "YES"; else echo "NO"; fi
#YES

#范例：要求某个字符串要么为空，要么和某个字符串相等
str1="test"
str2="test"
if test -z "$str2" -o "$str2" == "$str1"; then echo "YES"; else echo "NO"; fi
#YES
if test -z "$str2" || test "$str2" == "$str1"; then echo "YES"; else echo "NO"; fi
#YES

#范例：测试某个数字不满足指定的所有条件
i=5
if test ! $i -lt 5 -a $i -ne 6; then echo "YES"; else echo "NO"; fi
#YES
if ! test $i -lt 5 -a $i -eq 6; then echo "YES"; else echo "NO"; fi
#YES

i=5
if test $i -eq 5; then echo "YES"; else echo "NO"; fi
#YES
if test $i -ne 5; then echo "YES"; else echo "NO"; fi
#NO
if test ! $i -eq 5; then echo "YES"; else echo "NO"; fi
#NO


if [ $i -eq 5 ]; then echo "YES"; else echo "NO"; fi
#YES
if [ $i -gt 4 ] && [ $i -lt 6 ]; then echo "YES"; else echo "NO"; fi
#YES

str=""
if [ "$str" = "test"]; then echo "YES"; else echo "NO"; fi
#-bash: [: missing `]'
#NO
if [ $str = "test" ]; then echo "YES"; else echo "NO"; fi
#-bash: [: =: unary operator expected
#NO
if [ "$str" = "test" ]; then echo "YES"; else echo "NO"; fi
#NO



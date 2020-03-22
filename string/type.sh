#############################################################
#   File Name: type.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/22-17:11:15
#############################################################
#!/bin/sh 
#范例：数字或者数字组合
i=5;j=9423483247234;
echo $i | grep -q "^[0-9]$"
echo $?
#0
echo $j | grep -q "^[0-9]\+$"
echo $?
#0

#范例：字符组合（小写字母、大写字母、两者的组合）
c="A"; d="fwefewjuew"; e="fewfEFWefwefe"
echo $c | grep -q "^[A-Z]$"
echo $d | grep -q "^[a-z]\+$"
echo $e | grep -q "^[a-zA-Z]\+$"

#范例：字母和数字的组合
ic="432fwfwefeFWEwefwef"
echo $ic | grep -q "^[0-9a-zA-Z]\+$"

#范例：空格或者 Tab 键等
echo " " | grep " "
echo -e "\t" | grep "[[:space:]]" #[[:space:]]会同时匹配空格和TAB键
echo -e " \t" | grep "[[:space:]]"
echo -e "\t" | grep "" #为在键盘上按下TAB键，而不是字符

#范例：匹配邮件地址
echo "test2007@lzu.cn" | grep "[0-9a-zA-Z\.]*@[0-9a-zA-Z\.]"
#test2007@lzu.cn

#范例：匹配 URL 地址(以 http 链接为例）
echo "http://news.lzu.edu.cn/article.jsp?newsid=10135" | grep "^http://[0-9a-zA-Z\./=?]\+$"
#http://news.lzu.edu.cn/article.jsp?newsid=10135

# 说明：
#/dev/null 和 /dev/zero 设备非常有趣，都犹如黑洞，什么东西掉进去都会消失殆尽；后者还是个能源箱，总能从那里取到0，直到退出
#[[:space:]] 是 grep 用于匹配空格或 TAB 键字符的标记，其他标记请查帮助：man grep
#上面都是用 grep 来进行模式匹配，实际上 sed，awk 都可用来做模式匹配，关于匹配中用到的正则表达式知识，请参考后面的相关资料
#如果想判断字符串是否为空，可判断其长度是否为零，可通过 test 命令的 -z 选项来实现，具体用法见 test 命令，man test

#范例：判断字符是否为可打印字符
#echo -e is only for bash.
echo "\t\n" | grep "[[:print:]]"
#\t\n
echo $?
#0
echo -e "\t\n" | grep "[[:print:]]"
echo $?
#1

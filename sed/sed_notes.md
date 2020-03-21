#1. 删除文本中包含某个字符串的行
sed -i -e '/SHOW_VARIABLES/d' file.txt


#2.sed命令

```bash
awk '$1~/^insert/ || $1~/^update/ || $1~/^delete/ || $1~/^INSERT/ || $1~/^UPDATE/ || $1~/^DELETE/' nohup.out > sql.log
sed -i 's/tblAppQuestion_\w*/tblAppQuestion/g' sql.log
sed -i 's/tblAppReply_\w*/tblAppReply/g' sql.log
sed 's/$/&;/g' sql.log
cat sql.log >> test.log
```

#3.Linux命令之sed批量替换字符串操作
使用sed命令可以进行字符串的批量替换操作，以节省大量的时间及人力；
使用的格式如下：
> sed -i "s/oldstring/newstring/g" `grep oldstring -rl path`
> 

其中，oldstring是待被替换的字符串，newstring是待替换oldstring的新字符串，grep操作主要是按照所给的路径查找oldstring，path是所替换文件的路径；
-i选项是直接在文件中替换，不在终端输出；
-r选项是所给的path中的目录递归查找；
-l选项是输出所有匹配到oldstring的文件；

```bash
sed -i "s/#include \"postgres.h\"/#include \"zql.h\"/g" `grep "#include \"postgres.h\" " -rl .`

#所以，如果我们不需要备份的话，可以这样
sed -i "" "s/string_old/string_new/g" grep -rl string_old ./

#或者要备份原文件
sed -i ".bak" "s/string_old/string_new/g" grep -rl string_old ./

#算是分享一下遇到的坑
sed -i ".bak" "s/#include \"postgres.h\"/#include \"zql.h\"/g" `grep "#include \"postgres.h\" " -rl .`

sed -i "" "s/postgres_ext.h/zql_ext.h/g" `grep "postgres_ext.h" -rl .`
```

#4.删除文件的第n行和倒数第n行 
用sed和awk都可方便的实现
##4.1 命令行
删除第三行,并把结果送至文件newfile 
> sed '3d' file>newfile 

删除倒数第三行,把结果送至文件newfile 
> tac file|sed '3d'|tac >newfile

##4.2 脚本

```bash
FILENAME="test" 
N=2 
#删除第N行 
sed ${N}'d'   ${FILENAME} 
#删除倒数第N行 
sed $(($(cat ${FILENAME}|wc -l)-${N}+1))'d'  ${FILENAME}
```

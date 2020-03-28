#############################################################
#   File Name: find.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-21:14:59
#############################################################
#!/bin/sh 
#find 命令基本使用演示
find ./ -name "*.c" -o -name "*.h"  #找出所有的C语言文件，-o是或者
find ./ \( -name "*.c" -o -name "*.h" \) -exec mv '{}' ./c_files/ \;

# 把找到的文件移到c_files下，这种用法非常有趣
#上面的用法可以用 xargs 命令替代
find ./ -name "*.c" -o -name "*.h" | xargs -i mv '{}' ./c_files/
# 如果要对文件做更复杂的操作，可以考虑把mv改写为你自己的处理命令，例如，我需要修
#改所有的文件名后缀为大写。
find ./ -name "*.c" -o -name "*.h" | xargs -i ./toupper.sh '{}' ./c_files/

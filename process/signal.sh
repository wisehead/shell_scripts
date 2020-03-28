#############################################################
#   File Name: signal.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-22:11:49
#############################################################
#!/bin/bash

function signal_handler {
    echo "hello, world"
}
trap signal_handler 0
# chmod +x sigexit.sh
#$ ./sigexit.sh    #实际Shell编程会用该方式在程序退出时来做一些清理临时文件的收尾工作
#hello, world

#############################################################
#   File Name: ipc_control.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-22:10:57
#############################################################
#!/bin/sh 
  $ cat control.sh
  #!/bin/bash

  FIFO=fifo_test
  CI=$1

  [ -z "$CI" ] && echo "the control info should not be empty" && exit

  echo $CI > $FIFO

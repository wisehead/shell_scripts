#############################################################
#   File Name: ipc_app.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-22:10:18
#############################################################
#!/bin/sh 
  $ cat app.sh
  #!/bin/bash

  FIFO=fifo_test
  while :;
  do
      CI=`cat $FIFO`  #CI --> Control Info
      case $CI in
          0) echo "The CONTROL number is ZERO, do something ..."
              ;;
          1) echo "The CONTROL number is ONE, do something ..."
              ;;
          *) echo "The CONTROL number not recognized, do something else..."
              ;;
      esac
  done

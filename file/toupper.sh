#############################################################
#   File Name: toupper.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-21:14:32
#############################################################
#!/bin/sh 
#!/bin/bash

# the {} will be expended to the current line and becomen the first argument of this script
FROM=$1
BASENAME=${FROM##*/}

BASE=${BASENAME%.*}
SUFFIX=${BASENAME##*.}

TOSUFFIX="$(echo $SUFFIX | tr '[a-z]' '[A-Z]')"
TO=$2/$BASE.$TOSUFFIX
COM="mv $FROM $TO"
echo $COM
eval $COM

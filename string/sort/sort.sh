#############################################################
#   File Name: sort.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/03/28-18:37:46
#############################################################
#!/bin/sh 
var="get the length of me"
echo $var | tr ' ' '\n' | sort   #正序排
#get
#length
#me
#of
#the
echo $var | tr ' ' '\n' | sort -r #反序排
#the
#of
#me
#length
#get
#cat > data.txt
#1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
#41 45 44 44 26 44 42 20 20 38 37 25 45 45 45
#16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
#44 20 30 39 35 38 38 28 25 30 36 20 24 32 33
#31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
#41 33 51 39 20 20 44 37 38 39 42 40 37 50 50
#46 47 48 49 50 51 52 53 54 55 56
#42 43 41 42 45 42 19 39 75 17 17
cat data.txt | sort -k 2 -n
#1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
#16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
#44 20 30 39 35 38 38 28 25 30 36 20 24 32 33
#31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
#41 33 51 39 20 20 44 37 38 39 42 40 37 50 50
#42 43 41 42 45 42 19 39 75 17 17
#41 45 44 44 26 44 42 20 20 38 37 25 45 45 45
#46 47 48 49 50 51 52 53 54 55 56
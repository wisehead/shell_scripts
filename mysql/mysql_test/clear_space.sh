#############################################################
#   File Name: clear_space.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/06/02-20:20:27
#############################################################
#!/bin/sh 
manager_address=http://10.46.76.44:8822

for i in {0..300}
    do  
        #echo $i
        echo 
        curl -d '{"space_id":'$i'}' $manager_address/ManageService/delete_space 
        #sleep 10
    done

echo 
curl -d '{"space_id":4294967278}' $manager_address/ManageService/delete_space
echo 
curl -d '{"space_id":4294967279}' $manager_address/ManageService/delete_space 
echo 
curl -d '{"space_id":4294967280}' $manager_address/ManageService/delete_space
echo 
curl -d '{"space_id":4294967294}' $manager_address/ManageService/delete_space 
echo 

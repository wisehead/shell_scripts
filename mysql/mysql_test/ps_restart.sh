#############################################################
#   File Name: shutdown.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/06/03-17:34:30
#############################################################
#!/bin/sh 
kill `ps -u chenhui4|grep mysqld | awk '{print $1}'`
echo '[Shutdown Page Server ... ok.]'
#echo 
#echo 'sleep for 5 seconds'
sleep 5
cd var
rm -rf *
cd ..
echo 
echo '[Page Server : clean page store ok.]'
curl -d '{"segment_id":2,"replica_id":0}' http://10.46.76.44:8822/ManageService/drop_replica
#echo 
#echo 'sleep for 5 seconds'
sleep 5
echo 
echo '[Page Server : drop_replicat ok.]'
curl -d '{"segment_id":2,"replica_id":0,"addr":"10.46.76.44:10599"}' http://10.46.76.44:8822/ManageService/add_replica
#echo 
#echo 'sleep for 5 seconds'
sleep 5
echo 
echo '[Page Server : add_replicat ok.]'
curl -d '{}' http://10.46.76.44:8822/QueryService/list_page_server
#echo 
#echo 'sleep for 5 seconds'
sleep 5
echo 
echo '[Page Server : list_page_server ok.]'
#echo 
#echo 'sleep for 5 seconds'
sleep 5
./libexec/mysqld --defaults-file=$bpath/etc/my.cnf --manager_address=http://10.46.76.44:8822 &
echo 
echo '[Start Page Server ...  ok]'

#############################################################
#   File Name: restart_all.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/06/04-09:52:26
#############################################################
#!/bin/sh 
echo '---------------------------------------------'
echo 'GaiaDB Cluster Restart Start...'
cd $HOME/src_LogService/lspath
sh restart.sh
echo '[restart Log Service .... ok]'
echo '---------------------------------------------'
cd $bpath
sh restart.sh
echo '[restart Page Server .... ok]'
echo '---------------------------------------------'
cd $HOME/src_Primary
sh clear_space.sh 
sh get_space.sh
echo
echo '[Clean Table Space .... ok]'
echo
echo '---------------------------------------------'
echo 'All GaiaDB Cluster is Clean Now....'

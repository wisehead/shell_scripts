#kill process
sudo kill -9 $(ps aux | grep 'vscode-server' | grep -v grep | awk '{print $2}')

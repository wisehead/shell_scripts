#below command works on linux, but doesn't on Mac
#doesn't update file itself
sed -e 's/decimal(19\|decimal(2[0-9]\|decimal(3[0-9]\|decimal(4[0-9]\|decimal(4[0-9]\|decimal(5[0-9]\|decimal(6[0-9]/decimal(18/g' 3.txt
#update file
sed -i 's/decimal(19\|decimal(2[0-9]\|decimal(3[0-9]\|decimal(4[0-9]\|decimal(4[0-9]\|decimal(5[0-9]\|decimal(6[0-9]/decimal(18/g' 3.txt

line=$1
txt=$2
sum=0
for i in `seq 1 100`;do 
    flag=`sed -n $line"p" $txt`
    if [[ $flag -ne 0 ]];then 
        sum=`expr $sum + 1`
    fi
    line=`expr $line + 1500`

done
    echo line$1" "$sum

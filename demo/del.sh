#!/bin/sh
FILENAME="whitelist.vector"
rm tmp.txt
touch tmp.txt
for var in  6988 6987 6986 6985
    do 
        echo $var 
        #head -n $var test.sql|tail -1 >>new.wrong.sql  
        sed ${var}'d' ${FILENAME} >tmp.txt 
        cp tmp.txt ${FILENAME}
    done

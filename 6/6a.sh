d=$(date +%-d)
cal -h | head > __tmp__
if [ $d -lt 10 ]
then 
    sed "s/ $d / * /" __tmp__
else 
    sed "s/ $d / ** /" __tmp__
fi
rm __tmp__

d=$(date +%-d)
ncal -h > tmp
if [ $d -lt 10 ]
then 
    sed "s/ $d / * /" tmp
else 
    sed "s/ $d / ** /" tmp
fi
rm tmp

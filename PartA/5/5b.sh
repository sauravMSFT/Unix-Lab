if [ $# -eq 0 ]
then echo "Enter 2 files as arguments"
exit
fi

sort -o __temp1__ $1
sort -o __temp2__ $2
sort -m __temp1__ __temp2__
rm __temp1__ __temp2__

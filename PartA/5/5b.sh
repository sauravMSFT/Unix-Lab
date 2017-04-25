if [ $# -eq 0 ]
then echo "Enter 2 files as arguments"
exit
fi

mkdir /tmp/5b
sort -o /tmp/5b/tmp1 $1
sort -o /tmp/5b/tmp2 $2
sort -m /tmp/5b/tmp1 /tmp/5b/tmp2
rm /tmp/5b -r

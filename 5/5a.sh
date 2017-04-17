if [ $# -eq 0 ]; then 
	echo "Enter at least one argument"
else 
	for i in $*; do 
		temp=`grep "$i:" /etc/passwd|cut -d ":" -f6`
		if [ "$temp" ]; then
			echo "$i is a valid login name of directory $temp"
		else
			echo "$i is not a valid login name"
		fi 
	done
fi

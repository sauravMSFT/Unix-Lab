if [ $# -eq 0 ]; then
    echo "No arguments. Abort."
else 
    for i in $*; do
    echo "$i" | tr '[a-z]' '[A-Z]'
done
fi

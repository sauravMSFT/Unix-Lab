echo Enter Password
stty -echo
read psd1

echo Re-enter the Password
read psd2

if [ "$psd1" = "$psd2" ]; then
    echo Passwords match
    stty echo
    exit
else 
    trap '' 2 

    while [ "$psd1" != "$psd2" ]
    do
        echo Wrong, re-enter again
        read psd2
    done
fi
stty echo

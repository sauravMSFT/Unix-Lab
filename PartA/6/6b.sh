echo Enter Password
stty -echo
read psd1

stty echo
echo Re-enter the Password
stty -echo
read psd2
stty echo

if [ "$psd1" = "$psd2" ]; then
    echo Passwords match
    exit
else 
    trap '' 2 

    while [ "$psd1" != "$psd2" ]
    do
        echo Wrong, re-enter again
        stty -echo
        read psd2
        stty echo
    done
fi
stty echo

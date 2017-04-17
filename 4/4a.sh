echo "MENU
1. List of Files
2. Process Status
3. Date
4. Users
5. Quit to Terminal
Enter your choice: "
read choice

case "$choice" in
1) ls -l;;
2) ps;;
3) date;;
4) whoami;; 
5) exit;;
esac

if [ $# -lt 1 ]
then
	echo "Usage: filename1 (of the file to be executed) <space> filename2 (of the file whose permissions need to be checked)"
	exit 1
else
	echo "Do you want to revoke permissions for this file (Enter 1 for read (group); 2 for write (group); 3 for execute(group); 4 for read (others); 5 for write (others); 6 for execute (others); 0 for abort )"
	read choice
	case $choice in
		1) chmod g-r /home/admin-hp/Desktop/$1;;
		2) chmod g-w /home/admin-hp/Desktop/$1;;
		3) chmod g-e /home/admin-hp/Desktop/$1;;
		4) chmod o-w /home/admin-hp/Desktop/$1;;
		5) chmod o-r /home/admin-hp/Desktop/$1;;
		6) chmod o-e /home/admin-hp/Desktop/$1;;
		0) exit 1;; 
	esac
fi

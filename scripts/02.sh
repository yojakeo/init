read -p "Provide user to remove? " NAME

if id -u $NAME > /dev/null 2>&1
then
	echo "$NAME exists"
else
	echo "$NAME doesnt exist. Exiting."
exit
fi

log=$(sudo pgrep -u $NAME)
if $log
then
	sudo pkill -u $name > /dev/null 2>&1
	echo "Process killed."
fi

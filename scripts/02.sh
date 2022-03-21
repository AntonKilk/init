#!/bin/bash
echo "Type a username to delete"
read USER
VAL=$(w | grep "$USER" | cut -d " " -f1 | head -n 1)
if [[ $VAL == $USER ]]; then
	pkill -u $USER
	sudo userdel -r $USER
else
	echo "There is no such user"
fi

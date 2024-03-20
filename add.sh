#!/bin/sh
echo "Start add..."
ENTER_DATA=1
while [ ${ENTER_DATA} = 1 ]
do
	echo "Enter name:"
	read NAME
	echo "Enter phone:"
	read PHONE
	echo "Enter email:"
	read EMAIL
	echo -e "New record:\nname:${NAME}\nphone:${PHONE}\nemail:${EMAIL}"
	echo "Is correct: y/N or exit"
	read CORRECT
	if [ "${CORRECT}" == "y" ]; then
		ENTER_DATA=0
	else [ "${CORRECT}" == "exit" ]
		echo "Exit add..."
		exit 0
	fi
done

NEW_RECORD="${NAME};${PHONE};${EMAIL}"
echo "${NEW_RECORD}" >> $1
echo -e "user ${NEW_RECORD} added\nExit add..."
exit 0

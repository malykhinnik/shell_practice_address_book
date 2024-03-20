#!/bin/sh
echo "Start remove..."
echo "Enter number of record:"
read RECORD_NUMBER
echo "Remove record ${RECORD_NUMBER}, y/N?"
read REMOVE
if [ "${REMOVE}" == "y" ]; then
	sed ${RECORD_NUMBER}'d' $1 > addressbook.temp
       	mv addressbook.temp $1
	echo "Record ${RECORD_NUMBER} removed"
fi
echo "Exit remove"
exit 0

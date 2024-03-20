#!/bin/sh
echo "Start addressbook app"
DB="addressbook.csv"
COUNTER=1
while [ ${COUNTER} -lt 100 ]
do
	echo -e "Enter number of action:\n1 Search\n2 Add\n3 Remove\n0 Exit"
	read ACTION
	case ${ACTION} in
		1) eval ./search.sh ${DB};;
		2) eval ./add.sh ${DB};;
		3) eval ./remove.sh ${DB};;
		0) echo "Exit addressbook app"
			exit 0;;
		*) echo "Unknown number"
	esac
	((COUNTER++))
done

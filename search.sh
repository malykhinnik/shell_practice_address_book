#!/bin/sh
echo "Start search"
COUNTER=1
while [ ${COUNTER} -lt 4 ]
do
	echo -e "Enter field ID for search: (attempt ${COUNTER} from 3)\n1 Name\n2 Phone\n3 Email\n4 Exit search"
	read FIELD_ID
	case ${FIELD_ID} in
		1) echo "Enter name:" 
			read SEARCH
			QUERY=".*${SEARCH}.*;.*;.*"
			COUNTER=4;;
		2) echo "Enter phone:"
			read SEARCH
			QUERY=".*;.*${SEARCH}.*;.*"
			COUNTER=4;;
		3) echo "Enter email:"
			read SEARCH
			QUERY=".*;.*;.*${SEARCH}.*"
			COUNTER=4;;
		4) echo "Exit search..."
			exit 0;;
		*) echo "Unknown field ID";;
	esac
	
	if [ ${COUNTER} = 3 ]; then
		echo "Exit search..."
			exit 0
	fi
	
	((COUNTER++))
done

echo "Result search..."
grep -n ${QUERY} $1
echo "Exit search..."
exit 0


ispresent=$((RANDOM%2))
echo $ispresent

if [ $ispresent -eq 0 ]
then
	echo "Employee is Absent"
else
	echo "Employee is Present"
fi

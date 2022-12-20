
ispresent=$((RANDOM%2))
echo $ispresent

perhrswage=20
fullworkinghrs=8

if [ $ispresent -eq 0 ]
then
        echo "Employee is Absent"
else
        echo "Employee is Present"
fi

if [ $ispresent -eq 1 ]
then
	Dailywage=$(( perhrswage * fullworkinghrs ))
	echo "Dailywage= " $Dailywage
fi

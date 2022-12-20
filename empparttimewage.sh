
ispresent=$((RANDOM%3))
echo $ispresent

wageperhrs=20
fullworkinghrs=8
parttimeworkinghrs=4

if [ $ispresent -eq 0 ]
then
        echo "Employee is Absent"
elif [ $ispresent -eq 1 ]
then
        echo "Employee is on full time"
	Dailyfulltimewage=$(( $wageperhrs * $fullworkinghrs ))
        echo "Daily full time wage: "$Dailyfulltimewage
else
	echo "Employee is on part time"
	Dailyparttimewage=$(( $wageperhrs * $parttimeworkinghrs ))
        echo "Dailyparttimewage: "$Dailyparttimewage
fi


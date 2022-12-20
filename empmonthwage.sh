
ispresent=$((RANDOM%3))
echo $ispresent

wageperhrs=20
workinghours=0
totalwage=0

for (( day=1; day<=20; day++ ))
do
	case $ispresent in
		0)
        		echo "Employee is Absent"
			workinghours=0 ;;
		1)
			workinghours=8 ;;
		2)
			workinghours=4 ;;
	esac

	wage=$(( $wageperhrs * $workinghours ))
	totalwage=$(( $totalwage + $wage ))
done

echo "Monthly wage: "$totalwage

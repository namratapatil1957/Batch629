
ispresent=$((RANDOM%3))
echo $ispresent

wageperhrs=20
day=1
totalwage=0
totalworkinghrs=0
workinghrs=0

while [[ $day -lt 20 && $totalworkinghrs -lt 100 ]]
do
	case $ispresent in
       		0)
			workinghrs=0 ;;

       		1)
			workinghrs=8 ;;

       		2)
			workinghrs=4 ;;
	esac

	totalworkinghrs=$(($totalworkinghrs + $workinghrs))

	if [ $totalworkinghrs -gt 100 ]
	then
		totalworkinghrs=$(($totalworkinghrs - $workinghrs))
		break
	fi

	wage=$(( $wageperhrs * $workinghrs ))
	totalwage=$(( $totalwage + $wage ))

	((day++))

done
echo "Total wage of month: "$totalwage
echo "Total working hrs of month: "$totalworkinghrs

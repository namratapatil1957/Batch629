
ispresent=$((RANDOM%3))
echo $ispresent

wageperhrs=20
day=1
totalworkingdays=0
totalworkinghrs=0
workinghrs=0

function emphrs()
{
        case $ispresent in
                0)
                        workinghrs=0 ;;

                1)
                        workinghrs=8 ;;

                2)
                        workinghrs=4 ;;
        esac
}
while [[ $day -lt 20 && $totalworkinghrs -lt 100 ]]
do
        hours=$(emphrs)

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

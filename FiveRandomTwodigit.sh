
random1=$((RANDOM%90+10))
random2=$((RANDOM%90+10))
random3=$((RANDOM%90+10))
random4=$((RANDOM%90+10))
random5=$((RANDOM%90+10))

sum=$(($random1+$random2+$random3+$random4+$random5))
echo "Sum is : "$sum

avg=$(($sum/5))
echo "Average is : "$avg

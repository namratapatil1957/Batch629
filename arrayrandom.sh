
r1="$((RANDOM%900+100))"
echo "$r1"
r2="$((RANDOM%900+100))"
echo "$r2"
r3="$((RANDOM%900+100))"
echo "$r3"
r4="$((RANDOM%900+100))"
echo "$r4"
r5="$((RANDOM%900+100))"
echo "$r5"
r6="$((RANDOM%900+100))"
echo "$r6"
r7="$((RANDOM%900+100))"
echo "$r7"
r8="$((RANDOM%900+100))"
echo "$r8"
r9="$((RANDOM%900+100))"
echo "$r9"
r10="$((RANDOM%900+100))"
echo "$r10"

printf "\n"

declare -a random=( $r1 $r2 $r3 $r4 $r5 $r6 $r7 $r8 $r9 $r10 )
echo "array= " ${random[@]}

max=${random[0]}
min=${random[0]}



for (( i=1; i<10; i++ ))
do
	if [[ ${random[i]} > $max ]]				#secmax
	then
		secmax=$max
		max=${random[i]}
	elif [[ ${random[i]} > $secmax && ${random[i]} != $max ]]
	then
		secmax=${random[i]}
	fi



	if [[ ${random[i]} < $min ]]					#secmin
	then
		secmin=$min
		min=${random[i]}
	elif [[ ${random[i]} < $secmin && ${random[i]} != $min ]]
	then
		secmin=${random[i]}
	fi
done
printf "\n"

echo "secmax= "$secmax
echo "max= "$max
printf "\n"
echo "secmin= "$secmin
echo "min= "$min

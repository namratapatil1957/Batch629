
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

for (( i=0; i<${#random[@]}; i++ ))
do
	for (( j=0; j<${#random[@]}-i-1; j++ ))
	do
		if [[ ${random[j]} > ${random[$((j+1))]} ]]
		then
			temp=${random[j]}
			random[$j]=${random[$((j+1))]}
			random[$((j+1))]=$temp
		fi
	done
done
echo "sorted= " ${random[@]}
printf "\n"

echo "secmax= "${random[8]}
echo "max= "${random[9]}
printf "\n"
echo "secmin= "${random[1]}
echo "min= "${random[0]}

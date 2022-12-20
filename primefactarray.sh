
read -p " Enter the number: " n

if [ $n -lt 1 ]
then
	echo "not allowed"
fi

i=2
count=0
flag=0

for (( i; i<=$n; i++))
do
	if [ $(($n%$i)) -eq 0 ]
	then
		factor=$i

		for (( j=2; j<=$(($factor/2)); j++ ))
		do
			flag=0
			if [ $(($factor % $j)) -eq 0 ]
			then
				flag=1
				break
			fi
		done
		if [ $flag -eq 0 ]
		then
			s="$factor"
			echo $s
			#count=1
		fi
	fi
done

declare -a SA=${s[@]}
echo "prime factor in array: " ${SA[0]}

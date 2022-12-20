
read -p "Enter the range: " n1 n2
echo $n1 "to "$n2
echo "The prime number are: "

for ((n=$n1;n<=$n2;n++))
do
	count=1
	for ((a=1;a<=$n;a++))
	do
		mod=$(($n % $a))
		if [ $mod -eq 0 ]
		then
			c=$((count++))
		fi
	done
	if [ $c -eq 2 ]
	then
		echo $n
	fi
done


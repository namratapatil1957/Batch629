
read -p "Enter the number: " n
echo $n

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
                echo $n "is a prime number"
	else
		echo $n "is not a prime number"
        fi

